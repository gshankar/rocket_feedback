class RocketFeedback < ActionMailer::Base
      
  default_url_options[:host] = HOST

  def feedback(from, subject, feedback)
    @subject = "Feedback: #{subject}"
    @subject_for_message = subject
    @recipients = 'ganesh@ganeshshankar.com' 
    @from = from
    @sent_on = Time.now
    @sent_at = Time.now.strftime("%d/%m/%Y, %I:%M:%S %p").to_s
    @body["sent_at"] = @sent_at
  	@body["from"] = from
   	@body["feedback"] = feedback
   	@body["subject"] = @subject_for_message
    @headers = {}
  end
       
end
