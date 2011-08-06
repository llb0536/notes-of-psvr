# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  name_onclick = ->
    $('#name_link').hide()
    $('#name_input').show()
    $('#name_input').focus()
    false
    
  email_onclick = ->
    $('#email_link').hide()
    $('#email_input').show()
    $('#email_input').focus()
    false
  website_onclick = ->
    $('#website_link').hide()
    $('#website_input').show()
    $('#website_input').focus()
    false
  $('#name_link').click(name_onclick)
  $('#email_link').click(email_onclick)
  $('#website_link').click(website_onclick)
  
  $('#name_input').focusout(->
    if(this.value is '')
      $('#name_link').show()
      $('#name_input').hide()
  )
  $('#name_input').keypress((e)->
    if 9==e.keyCode and !e.shiftKey
      email_onclick()
  )
  $('#email_input').keypress((e)->
    if e.shiftKey && 9==e.keyCode
      name_onclick()
    else if 9==e.keyCode
      website_onclick()
  )
  $('#website_input').keypress((e)->
    if e.shiftKey && 9==e.keyCode
      email_onclick()
  )
  $('#reply_body').keypress((e)->
    if e.shiftKey && 9==e.keyCode
      website_onclick()
  )
  $('#email_input').focusout(->
    if(this.value is '')
      $('#email_link').show()
      $('#email_input').hide()
  )
  $('#website_input').focusout(->
    if(this.value is '')
      $('#website_link').show()
      $('#website_input').hide()
  )
  name_onclick() if $('#name_input').val() isnt ''
  email_onclick() if $('#email_input').val() isnt ''
  website_onclick() if $('#website_input').val() isnt ''
  
  window.ReplyNewApp = new OFPSVR.views.RepliesNew({el:$('#bottom')})