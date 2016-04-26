require 'test_helper'

class SolventControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
