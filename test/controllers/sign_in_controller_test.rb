require 'test_helper'

class SignInControllerTest < ActionController::TestCase
  test "should get sign_in" do
    get :sign
    assert_response :success
  end

  test "should get sign_up" do
    get :sign_up
    assert_response :success
  end

end
