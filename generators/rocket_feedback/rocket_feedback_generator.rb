class RocketFeedbackGenerator < Rails::Generator::NamedBase
  def manifest
    record do |m|
   
      #JavascriptFiles
      m.file "javascripts/rocket_feedback.js", "public/javascripts/rocket_feedback.js"
      m.file "javascripts/jquery.js", "public/javascripts/jquery.js"

      #CSS
      m.file "stylesheets/rocket_feedback_style.css", "public/stylesheets/rocket_feedback_style.css"

      #instructions for the user
      m.readme "INSTALL"
    end
  end
end
