o: ActiveSupport::Cache::Entry	:@compressedF:@expires_in0:@created_atf1312376837.2761469 �d:@value{I"
class:EFI"BundledAsset;
FI"id;
F"%a846d9206d664f6475f9fa03241638e1I"logical_path;
FI"models/reply.js;
TI"pathname;
FI"5$root/app/assets/javascripts/models/reply.coffee;
TI"content_type;
FI"application/javascript;
FI"
mtime;
F"2011-08-03 21:07:05 +0800I"	body;
FI"�(function() {
  var __hasProp = Object.prototype.hasOwnProperty, __extends = function(child, parent) {
    for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; }
    function ctor() { this.constructor = child; }
    ctor.prototype = parent.prototype;
    child.prototype = new ctor;
    child.__super__ = parent.prototype;
    return child;
  };
  OFPSVR.models.Reply = (function() {
    __extends(Reply, Backbone.Model);
    Reply.prototype.emailregexp = /^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i;
    function Reply(options) {
      Reply.__super__.constructor.call(this, options);
      this.urlRoot = '/notes/' + this.get('noteId') + '/replies';
    }
    Reply.prototype.validate = function(attrs) {
      if (!attrs.suc) {
        if (!(attrs.username.length >= 2 && attrs.username.length <= 15)) {
          return 'User name should be of length 2..10';
        }
        if (!this.emailregexp.test(attrs.email)) {
          return 'Email address is not valid';
        }
        if (!(attrs.website.length <= 200)) {
          return 'Website address is tooooooo long(What are you doing?)';
        }
        if (!(attrs.body.length <= 300 && attrs.body.length >= 1)) {
          return 'The length of your comment should be 1..300';
        }
      }
    };
    return Reply;
  })();
}).call(this);
;
TI"asset_paths;
F[I"5$root/app/assets/javascripts/models/reply.coffee;
TI"dependency_paths;
F[{I"	path;
FI"5$root/app/assets/javascripts/models/reply.coffee;
TI"
mtime;
FIu:	Timem��  P:@_zoneI"CST;
T:offseti�pI"hexdigest;
F"%28fda8a6ad6b29474cef2d99c41b1a11I"_version;
F"%8779f3ad1ddc41e21646bfcb243a9f46