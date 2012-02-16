require 'test_helper'

class SimulateControllerTest < ActionController::TestCase
  test "should get schedule" do
    get :schedule
    assert_response :success
  end

end
