// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require_tree .
//= require jquery
//= require jquery_ujs
//= require jquery-ui
$(document).ready(function(){

  var fixed_point = 150

  $(window).scroll(function(){
    if($(window).scrollTop() > fixed_point){
      $('.nav').addClass('fixed')
    }else{
      $('.nav').removeClass('fixed')
    }
  })

  $("#slideshow > div").hide();

  $('#slideshow > div:first').fadeIn(2000, function(){
    $("#slideshow > div:first > .text > h2").toggleClass('hidden');
    setTimeout(function(){
      $("#slideshow > div:first > .text > .innertext").toggleClass('hidden');
    }, 1500)
  });

  setInterval(function() {
    $('#slideshow > div:first')
      .fadeOut(2000)
      .next()
      .fadeIn(2000, function(){
        $("#slideshow > div > .text > h2").toggleClass('hidden');
        setTimeout(function(){
          $("#slideshow > div > .text > .innertext").toggleClass('hidden');
        }, 1500)
      })
      .end()
      .appendTo('#slideshow');
  }, 8000);

  $('.hamburger').click(function(){
    $('.nav > .items').toggleClass('revealed');
  })

  $('.exit').click(function(){
    $('.nav > .items').toggleClass('revealed');
  })

  $('.datepicker').datepicker();

  $('.room').mouseenter(function(e){
    $(this).addClass('hovered');
  })

  $('.room').mouseleave(function(){
    $(this).removeClass('hovered');
  })
})
