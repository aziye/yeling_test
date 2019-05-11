$(function() {
    


    $("tbody").on("click",".datagrid-row",function () {

      var textB = $(this).children()[1];
     var strB = $(textB).text();

     if (strB == "铁路发油" ) {

      location.href='./a.html';

    }
      
    });

  })