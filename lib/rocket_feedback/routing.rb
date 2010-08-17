module RocketFeedbackModule #:nodoc:
  module Routing #:nodoc:
    module MapperExtensions
      def rocket_feedback
        @set.add_route("/rocket_feedback", {:controller => "rocket_feedback", :action => "send_feedback"})
      end
    end
  end
end

ActionController::Routing::RouteSet::Mapper.send :include, RocketFeedbackModule::Routing::MapperExtensions
