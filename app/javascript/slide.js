const pics_src = ["assets/flight1.png","assets/flight2.png","assets/flight3.png"];
let num = -1;
 
function slideshow_timer(){
  if (num === 2){
    num = 0;
  } 
  else {
    num ++;
  }
  document.getElementById("images").src = pics_src[num];
}
 
setInterval(slideshow_timer, 5000);