require 'test_helper'

module Faucet
  class EmailsControllerTest < ActionController::TestCase
    test "should get index" do
      get :index
      assert_response :success
    end
  
  end
end
