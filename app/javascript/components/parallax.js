$(window).scroll(function(e) {
  parallax();
})


function parallax() {
  var scroll = $(window).scrollTop()/ 2;
  var screenHeight = $(window).height();


  $('.parallax_bg').each(function() {
    var offset = $(this).offset().top;
    var distanceFromBottom = offset - scroll - screenHeight

    if (offset > screenHeight && offset) {
      $(this).css('background-position', 'center ' + (( distanceFromBottom  ) * 0.5) +'px');
    } else {
      $(this).css('background-position', 'center ' + (( -scroll ) * 0.5) + 'px');
    }
  })
}

