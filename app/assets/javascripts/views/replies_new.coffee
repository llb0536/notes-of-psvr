class OFPSVR.views.RepliesNew extends Backbone.View
  
  events:
    "submit form":"createReply"
    
  constructor:(options)->
    super(options)
    @options.model = new OFPSVR.models.Reply({noteId:@el.data('note-id')})
    @options.model.bind('error',this.render_error)
    
  createReply:(e)->
    e.preventDefault()
    e.stopPropagation()
    $('#error').hide()
    @options.model.unset("error")
    params={
      username: e.target["reply[username]"].value
      email: e.target["reply[email]"].value
      website: e.target["reply[website]"].value
      body: e.target["reply[body]"].value
    }
    @options.model.save(params,
      beforeSend:(jqXHR, settings)=>
        $('#spinningWheel').show()
      complete:(jqXHR, textStatus)=>
        $('#spinningWheel').hide()
      success:(model, response)=>
        params.leftorright = 'left'
        params.inttime = response.inttime
        params.gravatar = response.gravatar
        params.klass = if params.id%2==0 then 'alt' else ''
        $('#reply_ol').append((index, html)->
          ich.li_template(params)
        )
        $('#notice').show()
        $('#will_be_hidden').hide()
    )
    
  render_error:(jqXHR, textStatus, errorThrown)=>
    $('#error').show()
    if textStatus.status
      $('#error').text('The server returns a '+textStatus.status+' response.')
    else
      $('#error').text(textStatus)