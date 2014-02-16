require 'test_helper'

class TtestpaperControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
