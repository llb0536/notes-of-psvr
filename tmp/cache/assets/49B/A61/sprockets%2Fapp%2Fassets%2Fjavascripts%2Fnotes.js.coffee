o: ActiveSupport::Cache::Entry	:@compressedF:@expires_in0:@created_atf1312372950.4504099 ӄ:@value{I"
class:EFI"BundledAsset;
FI"id;
F"%0ad1f6f56eb81d0d6eb565f85b25a7eaI"logical_path;
FI"notes.js;
TI"pathname;
FI"1$root/app/assets/javascripts/notes.js.coffee;
TI"content_type;
FI"application/javascript;
FI"
mtime;
F"2011-08-03 20:02:29 +0800I"	body;
FI"X(function() {
  jQuery(function() {
    var email_onclick, name_onclick, website_onclick;
    name_onclick = function() {
      $('#name_link').hide();
      $('#name_input').show();
      $('#name_input').focus();
      return false;
    };
    email_onclick = function() {
      $('#email_link').hide();
      $('#email_input').show();
      $('#email_input').focus();
      return false;
    };
    website_onclick = function() {
      $('#website_link').hide();
      $('#website_input').show();
      $('#website_input').focus();
      return false;
    };
    $('#name_link').click(name_onclick);
    $('#email_link').click(email_onclick);
    $('#website_link').click(website_onclick);
    $('#name_input').focusout(function() {
      if (this.value === '') {
        $('#name_link').show();
        return $('#name_input').hide();
      }
    });
    $('#name_input').keypress(function(e) {
      if (9 === e.keyCode && !e.shiftKey) {
        return email_onclick();
      }
    });
    $('#email_input').keypress(function(e) {
      if (e.shiftKey && 9 === e.keyCode) {
        return name_onclick();
      } else if (9 === e.keyCode) {
        return website_onclick();
      }
    });
    $('#website_input').keypress(function(e) {
      if (e.shiftKey && 9 === e.keyCode) {
        return email_onclick();
      }
    });
    $('#reply_body').keypress(function(e) {
      if (e.shiftKey && 9 === e.keyCode) {
        return website_onclick();
      }
    });
    $('#email_input').focusout(function() {
      if (this.value === '') {
        $('#email_link').show();
        return $('#email_input').hide();
      }
    });
    $('#website_input').focusout(function() {
      if (this.value === '') {
        $('#website_link').show();
        return $('#website_input').hide();
      }
    });
    if ($('#name_input').val() !== '') {
      name_onclick();
    }
    if ($('#email_input').val() !== '') {
      email_onclick();
    }
    if ($('#website_input').val() !== '') {
      website_onclick();
    }
    return window.ReplyNewApp = new OFPSVR.views.RepliesNew({
      el: $('#bottom')
    });
  });
}).call(this);
;
TI"asset_paths;
F[I"1$root/app/assets/javascripts/notes.js.coffee;
TI"dependency_paths;
F[{I"	path;
FI"1$root/app/assets/javascripts/notes.js.coffee;
TI"
mtime;
FIu:	Timel��  �	:@_zoneI"CST;
T:offseti�pI"hexdigest;
F"%da89e05a8c3d477982ff30ea805b4b17I"_version;
F"%8779f3ad1ddc41e21646bfcb243a9f46