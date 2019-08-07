$(document).ready(function() {
  var maxHeight = Math.max($(".item1").height(), $(".item2").height(), $(".item3").height());

  $(".item1").css("height", maxHeight + 32);
  $(".item2").css("height", maxHeight + 32);
  $(".item3").css("height", maxHeight + 32);
});
