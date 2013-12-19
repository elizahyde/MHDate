$(document).ready(function(){

  var photos = $('#hotties li');

  $.each(photos, function(k,v) {
    var photo = $(v);
    var caption = $('caption', photo);
    photo.on('mouseover', function() {
      caption.show();
    });
    photo.on('mouseout', function() {
      caption.hide();
    });
    photo.on('click', function() {
      var img = photo.find('img');
      cool_box(img);
    });
  });

  var cool_box = function(content) {

    var doc  = $(document);
    var body = $('body');

    if (doc.width() < 480) {
      return false;
    }
    var cb_content   = content.clone();
    var cb_wrap      = $('<div id="cb-wrap"/>');
    var cb_container = $('<div id="cb-container"/>');
    var cb_close     = $('<button class="close"/>').html('&captions;');

    var close = function() {
      cb_wrap.remove();
    };

    cb_close.on('click', function() {
      close();
    });
    cb_wrap.on('click', function(event) {
      if (event.target.id == "cb-wrap") {
        close();
      }
    });
    doc.on('keyup', function(event) {
      if (event.keyCode == 27) {
        close();
      }
    });

    cb_container.append(cb_content, cb_close);
    cb_wrap.append(cb_container);
    body.append(cb_wrap);

  };

});