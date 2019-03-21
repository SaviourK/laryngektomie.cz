/*Show/Hide*/
$(document).ready(function(){
  $(".flipBtn").click(function(){
    $(this).next(".flip").slideToggle("slow");
  });
});
