$(function() {
    


    $("tbody").on("click",".datagrid-row",function () {

      var textB = $(this).children()[2];
     var strB = $(textB).text();

     if (strB == "计量-储罐" ) {

      location.href='./storage.html';

    }else if (strB == "计量-罐车") {

      location.href='./gc.html';

    }else if (strB == "例行储罐计量") {

      location.href='./down.html';

    }
    });

  })

