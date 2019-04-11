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
    $("#hidden3").hide();
    $("#hidden4").hide();
  });

   $("#close2").click(function(){
    $("#hidden2").hide();
  });

   $("#show3").click(function(){
    $("#hidden3").show();
    $("#hidden2").hide();
    $("#hidden4").hide();
  });

   $("#close3").click(function(){
    $("#hidden3").hide();
  });

   $("#show4").click(function(){
    $("#hidden4").show();
    $("#hidden2").hide();
    $("#hidden3").hide();
  });

   $("#close4").click(function(){
    $("#hidden4").hide();
  });
});

