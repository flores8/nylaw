# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $("#ei-slider").eislideshow
    animation: "center"
    autoplay: true
    slideshow_interval: 3000
    titlesFactor: 0


$ ->
  $(".flexslider").flexslider animation: "slide"

