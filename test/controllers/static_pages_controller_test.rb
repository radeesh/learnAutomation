require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end
  test "should get login" do
    get :login
    assert_response :success
  end
  test "should get checkbox" do
    get :checkbox
    assert_response :success
  end
  test "should get option" do
    get :option
    assert_response :success
  end    
  test "should get waiting" do
    get :waiting
    assert_response :success
  end
end
