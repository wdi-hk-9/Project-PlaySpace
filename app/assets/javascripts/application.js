// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require jquery
//= require bootstrap

//Menu Toggle Script
$(document).ready(function() {
  if (window.location.pathname == "/"){
    $("#sidebar-wrapper-right").removeClass("hide");
    $("#menu-toggle2").removeClass("hide");
    $("#menu-toggle3").removeClass("hide");
  }

    $("#menu-toggle").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled");
    });

    $("#menu-toggle2").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled-right");
    });

    $("#menu-toggle3").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled-right");
    });
});
