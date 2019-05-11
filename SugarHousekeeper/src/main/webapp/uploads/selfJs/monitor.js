var monitors= document.getElementsByClassName("monitor-top");

// var name1 = font[0].dataset['name'];



for(var i=0;i<monitors.length;i++){

  if(monitors[i].dataset['sex'] == 0) {
    monitors[i].style.backgroundColor = "#2958a3";
  }else if (monitors[i].dataset['sex'] == 1) {
    monitors[i].style.backgroundColor = "#4393d1";
  } else if(monitors[i].dataset['sex'] == 2){
    monitors[i].style.backgroundColor = "#11b8e8";
    }else if(monitors[i].dataset['sex'] == 3){
    monitors[i].style.backgroundColor = "#18a381";
    }
    else if(monitors[i].dataset['sex'] == 4){
    monitors[i].style.backgroundColor = "#24d1a3";
    }
    else if(monitors[i].dataset['sex'] == 5){
    monitors[i].style.backgroundColor = "#8ed216";
    }
    }