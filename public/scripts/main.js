// Magnific popup init
$('.row-gallery .thumbnail').magnificPopup({
  type: 'image',
  gallery:{
    enabled:true
  }
});


// // load more btn
// $('.load-more').on('click', function() {
// 	$('.load-more-section').fadeIn(600);
//   $('.remove').removeClass('col-xs-12');
// 	$(this).hide();
// });

$('video').mouseenter(function(event) {
  $(this).get(0).play()
});

$('video').mouseleave(function(event) {
  $(this).get(0).pause()
});





// Detect Device
var isMobile = {
    Android: function() {
        return navigator.userAgent.match(/Android/i);
    },
    BlackBerry: function() {
        return navigator.userAgent.match(/BlackBerry/i);
    },
    iOS: function() {
        return navigator.userAgent.match(/iPhone|iPad|iPod/i);
    },
    Opera: function() {
        return navigator.userAgent.match(/Opera Mini/i);
    },
    Windows: function() {
        return navigator.userAgent.match(/IEMobile/i);
    },
    any: function() {
        return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows());
    }
};

if( !isMobile.any() )
  $(function() {
    // Thumbnails slider
    $('#myCarousel').carousel({
        autoplay: 3000
    });

    // handles the carousel thumbnails
    $('[id^=carousel-selector-]').click( function(){
      var id_selector = $(this).attr("id");
      var id = id_selector.substr(id_selector.length -1);
      id = parseInt(id);
      $('#myCarousel').carousel(id);
      $('[id^=carousel-selector-]').removeClass('selected');
      $(this).addClass('selected');
    });

    // when the carousel slides, auto update
    $('#myCarousel').on('slid', function (e) {
      var id = $('.item.active').data('slide-number');
      id = parseInt(id);
      $('[id^=carousel-selector-]').removeClass('selected');
      $('[id=carousel-selector-'+id+']').addClass('selected');
    });
  });
else
  $(function() {
    $('#myCarousel').carousel({
        autoplay: 3000
    });
  });

$(function() {
  $('#panel1').on('hide.bs.collapse', function () {
     $('#headingOne img').css('transform', 'rotate(0deg)');
  })
  $('#panel1').on('show.bs.collapse', function () {
     $('#headingOne img').css('transform', 'rotate(45deg)');
  })
  $('#panel2').on('hide.bs.collapse', function () {
     $('#headingTwo img').css('transform', 'rotate(0deg)');
  })
  $('#panel2').on('show.bs.collapse', function () {
     $('#headingTwo img').css('transform', 'rotate(45deg)');
  })
  $('#panel3').on('hide.bs.collapse', function () {
     $('#headingThree img').css('transform', 'rotate(0deg)');
  })
  $('#panel3').on('show.bs.collapse', function () {
     $('#headingThree img').css('transform', 'rotate(45deg)');
  }) 
});

$(function() {
  if ($(window).width() > 767) {
    $('.row-contact img').addClass('img-responsive');
  } else {
      $('.row-contact img').removeClass('img-responsive');
  }
});

$(function() {
  $('.open-modal').magnificPopup({
    type:'inline',
    midClick: true // Allow opening popup on middle mouse click. Always set it to true if you don't provide alternative source in href.
  });
});

  
if (sessionStorage.getItem('advertOnce') !== 'true') {
  $(window).load(function(){
      setTimeout(function() {
        $.magnificPopup.open({
          items: {src: '#newsletter'},
          type: 'inline',
          mainClass: 'mfp-fade'
        }, 0);
        sessionStorage.setItem('advertOnce','true');
      }, 2000);      
   });
 }else{
   $('#newsletter').hide();
}
   



$(document).ready(function(){
  $.cookieBar({
    message: "Kastner&Pallavicino use third parties cookies. By continuing to browse the site, you are agreeing to our use of cookies.",
    policyButton: true,
    policyText: 'Read more',
    policyURL: 'policy.html',
    acceptText: 'Ok',
    fixed: true,
    bottom: true   
  });
});

$(document).on('click', '.load-more-galleries', function(){

  var url = $(document).find('#load-more-galleries-url').text();
  getGalleries(url);

});

function getGalleries (url) {

    var last_gallery = $('.single-gallery').last();
    var navbar_height = parseInt($('.navbar').css('height').replace('px', ''));

    // console.log(last_gallery);

    $.ajax({
        url: url,
        type: 'GET',
        success: function(data) {

            $(data.layout).appendTo('.row-gallery').hide().fadeIn(600);
            // $('.row-gallery').append(data.layout).fadeIn(600);
            // $('.hidden-galleries').append(data.galleries);
            $(document).find('#load-more-galleries-url').text(data.url);

            var next_activity = $(last_gallery).next();

            // animate_scroll(next_activity, navbar_height, 25);

            if(data.more == false)
            {
              $('.load-more-galleries').hide();
            }

            return false;
        },
        error: function(XMLHttpRequest, textstatus, error) {

            return false;

        }
    });

    return false;


}
