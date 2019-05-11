$(function() {
    


    $("tbody").on("click",".datagrid-row",function () {

      var textB = $(this).children()[1];
     var strB = $(textB).text();

     if (strB == "YC-003") {

      location.href='./railway-fill.html';

    }else if (strB == "YC-001") {

      location.href='./feedback.html';

    }
    });

  })

