// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require('jquery')

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
//= require jquery-ui

$(document).ready(function(){
 	
var video = document.getElementById("myVideo");
var vidViews = parseInt(document.getElementById("viewLength").innerHTML);
console.log(vidViews);

video.onplay = function() {

video.addEventListener("timeupdate", () => { getPlayedTime(video); });

};


  function getPlayedTime(video) {

	var x = window.location.href;
 	console.log(x);
    
    var totalPlayed = 0;
    var played = video.played;

    for (var i = 0; i < played.length; i++) {
        totalPlayed += played.end(i) - played.start(i);
    };
      
    console.log(totalPlayed);

      video.onended = function() {
      	vidViews += totalPlayed;
      	};

     $.ajax({
      
      url: window.location.href,  
      type: "put",
      data: { video: { length: video.duration, viewing: vidViews+totalPlayed } },
      dataType: "script"
  
      });
   };
});


