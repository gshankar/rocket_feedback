// Load the feedback form on click event
var feedback_visible = false;

function toggleRocketFeedbackForm () {
  if(feedback_visible === false) {
  $('#rocket_feedback_form').animate({'left':'0px'},300);
  $('#rocket_feedback_form_tab').animate({'left':'320px'},300);
  feedback_visible = true;
}
else{
$('#rocket_feedback_form').animate({'left':'-330px'},300);
$('#rocket_feedback_form_tab').animate({'left':'0px'},300);

feedback_visible = false;
  }

}


function sendFeedback() {
  $('.holder').hide();
  $('#loading').show();
  $.ajax({
    url: '/rocket_feedback/sendmail',
    data: {
      subject:$('#feedback_form_subject').val(), 
      email:$('#feedback_form_email').val(), 
      feedback:$('#feedback_form_feedback').val()
    },
    dataType: 'js',
    type: 'post',
    success: function(js){
    }

  });
  $('#rocket_feedback_form').animate({'left':'-330px'},300);
  $('#rocket_feedback_form_tab').animate({'left':'0px'},300);



  feedback_visible = false;

}

$(document).ready(function(){
  $('#rocket_feedback_form_tab').bind("click", toggleRocketFeedbackForm);
  $('#feedback_form_submit').bind("click", sendFeedback);
});


