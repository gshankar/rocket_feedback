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

function hideFeedbackTab() {
  $('#rocket_feedback_form').animate({'left':'-330px'},300);
  $('#rocket_feedback_form_tab').animate({'left':'0px'},300);

  feedback_visible = false;
  setTimeout(function(){  
    $('#feedback_form_subject_input').val(""); 
    $('#feedback_form_email_input').val("");
    $('#feedback_form_feedback_input').val("");
    $('#feedback_form_info_text').html('Thanks for your feedback!');
    $('#feedback_form_submit_input').attr('disabled', false);
    
  }, 1000);
}

function sendFeedback() {
  $('#feedback_form_submit_input').attr('disabled', true);
  $.ajax({
    url: '/rocket_feedback',
    data: {
      subject:$('#feedback_form_subject_input').val(), 
      email:$('#feedback_form_email_input').val(), 
      feedback:$('#feedback_form_feedback_input').val()
    },
    dataType: 'js',
    type: 'post',
    success: function(js){
    }

  });

  $('#feedback_form_info_text').html('Sending your feedback...');

  //Hide Feedback Tab
  setTimeout(hideFeedbackTab, 2000);
}

$.validator.setDefaults({
    submitHandler: function() { sendFeedback(); }
});

$(document).ready(function(){
  $('#rocket_feedback_form_tab').bind("click", toggleRocketFeedbackForm);

  // validate feedback form on keyup and submit
  $("#rocket_feedback_form").validate({
    errorLabelContainer: $("#rocket_feedback_form div.error"),
    rules: {
      feedback_form_email_input: {
        required: true,
        email :true
      },
      feedback_form_subject_input: "required",
      feedback_form_feedback_input: "required"
    },
    messages: {
      feedback_form_email_input: "Please enter a valid Email Address.",
      feedback_form_subject_input: "Please enter a Subject.",
      feedback_form_feedback_input: "Please enter some feedback."
    }
  });
});



