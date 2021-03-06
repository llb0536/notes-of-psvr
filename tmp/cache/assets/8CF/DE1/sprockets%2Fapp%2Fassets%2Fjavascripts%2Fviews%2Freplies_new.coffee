o: ActiveSupport::Cache::Entry	:@compressedF:@expires_in0:@created_atf1312537278.473397 L#:@value{I"
class:EFI"BundledAsset;
FI"id;
F"%89205eeb6528c7b58b0fec216de7139cI"logical_path;
FI"views/replies_new.js;
TI"pathname;
FI":$root/app/assets/javascripts/views/replies_new.coffee;
TI"content_type;
FI"application/javascript;
FI"
mtime;
F"2011-08-05 17:41:17 +0800I"	body;
FI"�	(function() {
  var __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; }, __hasProp = Object.prototype.hasOwnProperty, __extends = function(child, parent) {
    for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; }
    function ctor() { this.constructor = child; }
    ctor.prototype = parent.prototype;
    child.prototype = new ctor;
    child.__super__ = parent.prototype;
    return child;
  };
  OFPSVR.views.RepliesNew = (function() {
    __extends(RepliesNew, Backbone.View);
    RepliesNew.prototype.events = {
      "submit form": "createReply"
    };
    function RepliesNew(options) {
      this.render_error = __bind(this.render_error, this);      RepliesNew.__super__.constructor.call(this, options);
      this.options.model = new OFPSVR.models.Reply({
        noteId: this.el.data('note-id')
      });
      this.options.model.bind('error', this.render_error);
    }
    RepliesNew.prototype.createReply = function(e) {
      var params;
      e.preventDefault();
      e.stopPropagation();
      $('#error').hide();
      this.options.model.unset("error");
      params = {
        username: e.target["reply[username]"].value,
        email: e.target["reply[email]"].value,
        website: e.target["reply[website]"].value,
        body: e.target["reply[body]"].value
      };
      return this.options.model.save(params, {
        beforeSend: __bind(function(jqXHR, settings) {
          return $('#spinningWheel').show();
        }, this),
        complete: __bind(function(jqXHR, textStatus) {
          return $('#spinningWheel').hide();
        }, this),
        success: __bind(function(model, response) {
          params.leftorright = 'left';
          params.inttime = response.inttime;
          params.gravatar = response.gravatar;
          params.klass = params.id % 2 === 0 ? 'alt' : '';
          $('#reply_ol').append(function(index, html) {
            return ich.li_template(params);
          });
          $('#notice').show();
          return $('#will_be_hidden').hide();
        }, this)
      });
    };
    RepliesNew.prototype.render_error = function(jqXHR, textStatus, errorThrown) {
      $('#error').show();
      if (textStatus.status) {
        return $('#error').text('The server returns a ' + textStatus.status + ' response.');
      } else {
        return $('#error').text(textStatus);
      }
    };
    return RepliesNew;
  })();
}).call(this);
;
TI"asset_paths;
F[I":$root/app/assets/javascripts/views/replies_new.coffee;
TI"dependency_paths;
F[{I"	path;
FI":$root/app/assets/javascripts/views/replies_new.coffee;
TI"
mtime;
FIu:	Time���  �:@_zoneI"CST;
T:offseti�pI"hexdigest;
F"%abfe10176257f1f9fe398a255dc81f53I"_version;
F"%8779f3ad1ddc41e21646bfcb243a9f46