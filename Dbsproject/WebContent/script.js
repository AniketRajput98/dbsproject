$(document).ready(function(){
  $("#show").click(function(){
    $("#hidden").show();
    $("#hidden1").hide();
  });

   $("#close").click(function(){
    $("#hidden").hide();
  });

   $("#show1").click(function(){
    $("#hidden1").show();
    $("#hidden").hide();
  });

   $("#close1").click(function(){
    $("#hidden1").hide();
  });

   $("#show2").click(function(){
    $("#hidden2").show();
  });

   $("#close2").click(function(){
    $("#hidden2").hide();
  });
});

