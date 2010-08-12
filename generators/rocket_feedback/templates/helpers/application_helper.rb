# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def rocket_feedback
    render :partial => 'rocket_feedback/feedback_form'
  end

end
