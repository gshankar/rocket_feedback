class RocketFeedbackController < ApplicationController
  
  #Email method for feedback from any point in the application
  def send_feedback
  	  subject = params["subject"]
  	  from = params["email"]
  	  feedback = params["feedback"]
      RocketFeedbackMailer.deliver_feedback(from, subject, feedback)
      respond_to do |format|
        format.js { render :text => ''}
      end
   end
end
