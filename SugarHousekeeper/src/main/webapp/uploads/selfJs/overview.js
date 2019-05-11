var cont= document.getElementsByClassName("list_content");

// var name1 = font[0].dataset['name'];



for(var i=0;i<cont.length;i++){

  if(cont[i].dataset['add'] == 0) {
    cont[i].style.backgroundColor = "#ffffff";
  }else if (cont[i].dataset['add'] == 1) {
    cont[i].style.backgroundColor = "#daf1cd";
  } else if(cont[i].dataset['add'] == 2){
    cont[i].style.backgroundColor = "#cce2f2";
    }else if(cont[i].dataset['add'] == 3){
    cont[i].style.backgroundColor = "#e6e6e6";
    }
  }