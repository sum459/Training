// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")



// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

// video.addEventListener 'timeupdate', ((e) ->
//   console.log(lengthWatched(e));
//   return
//   ), false

// document.addEventListener('DOMContentLoaded',()=>{

// // Get the video element with id="myVideo"
// //  var vid = document.getElementById("myVideo");

// // // Assign an ontimeupdate event to the video element, and execute a function if the current playback position has changed
// //  vid.ontimeupdate = function() {myFunction()};
// //  console.log(myFunction());

// // function myFunction() {
// //   // Display the current position of the video in a p element with id="demo"
// //   document.getElementById("demo").innerHTML = vid.currentTime;
// //   return(vid.duration);
// // }

// function init()
// {
//     var vid = document.getElementById("myVideo");
//     vid.addEventListener("timeupdate", function(event){
//         var result = vid.duration;
//         // result is your return value
//     }, false);

// }
// // // vid.addEventListener("timeupdate", );

// // // setInterval(function(){
// // //     percentComplete = vid.currentTime/vid.duration;
// // // }, 300); 

// // function myFunction(x,y) {
 
// // var video = document.getElementById("myVideo");

// // // // Attach a timeupdate event to the video element, and execute a function if the current playback position has changed
// // // x.addEventListener("timeupdate", myFunction);

// // // function myFunction() {
// // //   // Display the current position of the video in a p element with id="demo"
// // //   document.getElementById("demo").innerHTML = x.currentTime;

// // //   console.log(x.currentTime);
// // //   y = y + x.currentTime

// // // }

// // // console.log(y+'vvv')


// // video.addEventListener('timeupdate', function() {
// //   // don't have set the startTime yet? set it to our currentTime
// //   if (!this._startTime) this._startTime = this.currentTime;

// //   var playedTime = this.currentTime - this._startTime;

// //   console.log(playedTime);

// //   y = playedTime;
// //   console.log(y+'xxx');
// //   return y;
  

// // });

// // video.addEventListener('seeking', function() {
  
// //   x = x + y ;
// //   console.log(x + 'okk');


// //   // reset the timeStart
// //   this._startTime = undefined;

  

// // });

// // console.log(x + 'done');



// // };

// // document.getElementById("demo").innerHTML = myFunction(0,0);

// });


//document.addEventListener('DOMContentLoaded',()=>{

// var video = document.getElementById("myVideo");
// var demo = document.getElementById("demo")

// video.addEventListener("timeupdate", () => { getPlayedTime(video); });

// //var y = video.addEventListener("timeupdate", () => { getPlayedTime(video); });

// function getPlayedTime(video) {
    
//     var totalPlayed = 0;
//     var played = video.played;

//     for (var i = 0; i < played.length; i++) {
//         totalPlayed += played.end(i) - played.start(i);
//     }
  
    
//     // return {

//     //     total: totalPlayed,
//     //     percent: totalPlayed / video.duration * 100

//     // };
//     demo.innerHTML = totalplayed ;

//     //console.log(totalPlayed);
// }
$(document).ready(function(){
	
	$(".abc").on('click', GetContentAndSlide);
    
   // var id = $(this).attr("id");
function  GetContentAndSlide(){
   
   duration = '10';

    $.ajax({
      url: "/posts/20",  
      type: "put",
      data: { post: { length: duration } },
      dataType: "script"
  
});
};
});
 


 
 
