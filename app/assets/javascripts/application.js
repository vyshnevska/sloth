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
//= require bootstrap
//= require namespace
//= require_tree ./modules
//= require_tree ./components
//= require_tree ./odometer

//CHARACTER ODOMETER
function renderTextOdometer(){

  var elt    = $('#roller')[0];
  var texts  = ["12345984529540210", "numbers_&_numbers", "12345678695403210", "want_more_numbers", '10101010001110111', "flocke_in_numbers"];

  elt.textroller  = new TextRoller({
    el: elt,
    values: texts,    // an array of texts.     default : [el.innerHtml]
    align: "left",    // right, left or middle. default : middle
    delay: 3000,      // in milliseconds,       default : 5000
    loop: false       // at the end, restart.   default : true
  });

  setTimeout( function(){
    elt.textroller.render();
  }, 1000);
};


// DIGITAL ODOMETERS
var odometers = [];

function tabClickInit(el){
  setTimeout( function(){
    odometers.forEach(function(od){
      if (od.el.className.includes('working_hours') || od.el.className.includes('working_days')){
        var fieldKeys = el.dataset.fieldKey.split(',');

        if (fieldKeys.length > 1){
          fieldKeys.forEach(function(nestedOd){
            if (od.el == $('.' + nestedOd)[0]) {
              od.update(od.el.dataset.number);
            }
          });
        }
      } else {
        if (od.el == $('.' + el.dataset.fieldKey)[0]) {
          od.update(od.el.dataset.number);
        } else {
          od.update(0);
        }
      }
    });
  }, 1000);
};

function pageStart(){
  odometers = [];
  var list =  $('.odometer');
  var doms = [];
  for(var i = 0; i< list.length;i++){
    doms.push(list[i]);
  }
  doms.forEach(function(odometerEl){
    odometers.push( new Odometer({ el: odometerEl, value: 0, theme: 'car', duration: 5000, animation: 'count'}));
  });
}


$(document).on('turbolinks:load', function() {

  $(pageStart);

  $(renderTextOdometer);

});