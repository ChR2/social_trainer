$(document).ready(function(){
  $('form.signupform').hide();
  $("#signup").on("click", function(event){
    $('form.loginform').hide();
    $('form.signupform').show();
    $(this).hide();
  })
})
