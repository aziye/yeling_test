$(function () {

  $(".plan-last").on("mouseover",".plan-copy",function () {
  $(this).parent().toggleClass('plan-after');
  // alert(1);
})

$(".plan-last").on("mouseout",".plan-copy",function () {
  $(this).parent().toggleClass('plan-after');
  // alert(1);
})


})
