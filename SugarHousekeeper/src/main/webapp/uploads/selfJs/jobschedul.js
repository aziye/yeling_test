var font= document.getElementsByClassName("z-right");
var fontLast= document.getElementsByClassName("line-last-li");



// console.log(fontLast[0].dataset['name'])

for(var i=0;i<font.length;i++){

  if(font[i].dataset['name'] == 0) {
    font[i].style.backgroundColor = "#209FC9";
  }else if (font[i].dataset['name'] == 1) {
    font[i].style.backgroundColor = "#88bf45";
  } else if(font[i].dataset['name'] == 2){
    font[i].style.backgroundColor = "#ccc";
    }
  }

for(var i=0;i<fontLast.length;i++){

  if(fontLast[i].dataset['node'] == 1) {
    fontLast[i].style.backgroundColor = "#ccc";
  }else if (fontLast[i].dataset['node'] == 2) {
    fontLast[i].style.backgroundColor = "#209FC9";
  }

}


$('.talk').click(function () {
  $(this).toggleClass("current")
  $(this).parents('.zl-line').find(".zl-line-bottom").stop().slideToggle()
})





