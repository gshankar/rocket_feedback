require File.dirname(__FILE__) + '/test_helper.rb'


class RocketFeedbackTest < ActiveSupport::TestCase

  def test_rocket_feedback
    assert_kind_of RocketFeedback, RocketFeedback.new
  end

end
