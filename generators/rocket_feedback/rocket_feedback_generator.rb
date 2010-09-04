class RocketFeedbackGenerator < Rails::Generator::Base

  # def initialize(*runtime_options)
  #   super(runtime_options)
  #   @rocket_args = runtime_options.first
  # end

  def manifest
    record do |m|
      
      #initializers
      m.file "initializers/rocket_feedback.rb", "config/initializers/rocket_feedback.rb"

      #views
      m.directory "app/views/rocket_feedback"
      m.file "views/rocket_feedback/_feedback_form.html.erb", "app/views/rocket_feedback/_rocket_feedback.html.erb"
      m.file "views/rocket_feedback/feedback.html.erb", "app/views/rocket_feedback/feedback.html.erb"

      #JavascriptFiles
      m.file "javascripts/rocket_feedback.js", "public/javascripts/rocket_feedback.js"
      m.file "javascripts/jquery.js", "public/javascripts/jquery.js"
      m.file "javascripts/jquery.validate.js", "public/javascripts/jquery.validate.js"

      #CSS
      m.file "stylesheets/rocket_feedback_style.css", "public/stylesheets/rocket_feedback_style.css"
      
      #images
      m.file "images/feedback_blank_tab.png", "public/images/feedback_blank_tab.png"

      #instructions for the user
      m.readme "INSTALL"

      #testing
      # debugger
      # m.template "stuff.txt", File.join("public", "stuff.txt"), :assigns => {:args => @rocket_args}
    end
  end
end
