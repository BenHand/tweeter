require 'test_helper'

class TweetsControllerTest < ActionController::TestCase
  test "should get user:belongs_to" do
    get :user:belongs_to
    assert_response :success
  end

end
