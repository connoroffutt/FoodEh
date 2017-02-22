// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require materialize
//= require jquery_ujs
// require turbolinks
//= require_tree .

$(document).ready(function(){
  $('.modal-trigger').leanModal();
});

// if(scroll_start > offset.top) {
//     $(".site-nav").addClass("fixed-site-nav");
//   }
//   else {
//     $(".site-nav").removeClass("fixed-site-nav");
//   }

$(document).ready(function($) {
  $(window).scroll(function() {
    var scrollDown = $(window).scrollTop(),
      navbar = $('.site-nav');

    if (scrollDown > 500) {
      navbar.addClass('alt-color')
    }
    else {
      navbar.removeClass('alt-color');
    }
  });

  // $('.cuisine-name').hide();

  // $('.cuisinebuttons').hover(function() {
  //   $(this).addClass('hover-btn-layer');
  // }, function() {
  //   $(this).removeClass('hover-btn-layer');
  // });
  //
  // $('.recipe-buttons').hover(function() {
  //   $(this).addClass('hover-btn-layer');
  // }, function() {
  //   $(this).removeClass('hover-btn-layer');
  // });

});
