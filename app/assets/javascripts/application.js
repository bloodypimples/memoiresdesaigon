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
//= require jquery
//= require jquery_ujs
//= require jquery-ui
function set_booking_form(){
  var arrival_timestamp = $('#reservation_arrival_date').attr('value')
  var departure_timestamp = $('#reservation_departure_date').attr('value')
  var guests = $('#reservation_guests').attr('value')
  var arrival_time_object = new Date(parseInt(arrival_timestamp))
  var departure_time_object = new Date(parseInt(departure_timestamp))
  $('.arrival .month').html(monthNames[arrival_time_object.getMonth()])
  $('.departure .month').html(monthNames[departure_time_object.getMonth()])
  $('.arrival .date').html(arrival_time_object.getDate())
  $('.departure .date').html(departure_time_object.getDate())
  $('.guests .people').html(guests)
}

var monthNames = ["January", "February", "March", "April", "May", "June",
  "July", "August", "September", "October", "November", "December"
];

$(document).ready(function(){

  var fixed_point = 150

  $(window).scroll(function(){
    if($(window).scrollTop() > fixed_point){
      $('.nav').addClass('fixed')
    }else{
      $('.nav').removeClass('fixed')
    }
  })

  $(".slideshow > div").hide();

  $('.slideshow > div:first').fadeIn(2000, function(){
    $(".slideshow > div:first > .text > h2").toggleClass('hidden');
    setTimeout(function(){
      $(".slideshow > div:first > .text > .innertext").toggleClass('hidden');
    }, 1500)
  });

  setInterval(function() {
    $('.slideshow > div:first')
      .fadeOut(2000)
      .next()
      .fadeIn(2000, function(){
        $(".slideshow > div > .text > h2").toggleClass('hidden');
        setTimeout(function(){
          $(".slideshow > div > .text > .innertext").toggleClass('hidden');
        }, 1500)
      })
      .end()
      .appendTo('.slideshow');
  }, 8000);

  $('.hamburger').click(function(){
    $('.nav > .items').toggleClass('revealed');
  })

  $('.exit').click(function(){
    $('.nav > .items').toggleClass('revealed');
  })

  $('#arrival_date_picker').datepicker({
    onSelect: function() {
        var dateObject = $(this).datepicker('getDate')
        var timestamp = new Date(dateObject).getTime()
        var departure_timestamp = $('#reservation_departure_date').attr('value')
        var departure_date_object = new Date(parseInt(departure_timestamp))
        $('#reservation_arrival_date').attr('value', timestamp)
        if(dateObject.getDate() >= departure_date_object.getDate()){
            $('#reservation_departure_date').attr('value', timestamp + 86400 * 1000)
        }
        set_booking_form()
    }
  });

  $('#departure_date_picker').datepicker({
    onSelect: function() {
        var dateObject = $(this).datepicker('getDate')
        var timestamp = new Date(dateObject).getTime()
        var arrival_timestamp = $('#reservation_arrival_date').attr('value')
        var arrival_date_object = new Date(parseInt(arrival_timestamp))
        $('#reservation_departure_date').attr('value', timestamp)
        if(dateObject.getDate() <= arrival_date_object.getDate()){
            $('#reservation_arrival_date').attr('value', timestamp - 86400 * 1000)
        }
        set_booking_form()
    }
  });

  $('.room').mouseenter(function(e){
    $(this).addClass('hovered');
  })

  $('.room').mouseleave(function(){
    $(this).removeClass('hovered');
  })

  $("#gallery > div:gt(0)").hide();

  setInterval(function() {
    $('#gallery > div:first')
      .fadeOut(1000)
      .next()
      .fadeIn(1000)
      .end()
      .appendTo('#gallery');
  },  3000);

  $('.reservation.submit').click(function(){
    $('.simple_form.reservation').submit()
  })

  set_booking_form()

  $('.date-picker').datepicker()

  $('.number-picker > div').click(function(){
    var number = $(this).attr('value')
    $('#reservation_guests').attr('value', number)
    set_booking_form()
  })
})
