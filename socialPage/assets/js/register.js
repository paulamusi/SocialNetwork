$(document).ready(function(){

 //On click signup, hide login and show registration forms
 $("#signup").click(function(){
     $("#first").slideUp("slow", function(){
         $("#second").slideDown("slow");
     });
 });

  //On click signup, hide registration and show login forms
 $("#signin").click(function(){
    $("#second").slideUp("slow", function(){
        $("#first").slideDown("slow");
    });
});
});