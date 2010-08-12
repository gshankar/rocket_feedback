class RocketFeedbackGenerator < Rails::Generator::Base
  def manifest
    record do |m|
   
      #Models
      m.file "models/rocket_feedback.rb", "app/models/rocket_feedback.rb"
   
      #Controllers
      m.file "controllers/rocket_feedback_controller.rb", "app/controllers/rocket_feedback_controller.rb"
   
      #Views
      m.directory "app/views/rocket_feedback"
      m.file "views/feedback.html.erb", "app/views/rocket_feedback/feedback.html.erb"
      m.file "views/_feedback_form.html.haml", "app/views/rocket_feedback/_feedback_form.html.haml"

      #JavascriptFiles
      m.file "javascripts/rocket_feedback.js", "public/javascripts/rocket_feedback.js"

      #CSS
      m.file "stylesheets/rocket_feedback_style.css", "public/stylesheets/rocket_feedback_style.css"

      #instructions for the user
      m.readme "INSTALL"
    end
  end
end
