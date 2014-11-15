require 'test_helper'

class ResponsesControllerTest < ActionController::TestCase
  setup do
    @goruco_response = responses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:responses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create response" do
    assert_difference('Response.count') do
      post :create, response: { city: @goruco_response.city, state: @goruco_response.state, stay: @goruco_response.stay, thoughts: @goruco_response.thoughts, years_using_ruby: @goruco_response.years_using_ruby }
    end

    assert_redirected_to response_path(assigns(:response))
  end

  test "should show response" do
    get :show, id: @goruco_response
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @goruco_response
    assert_response :success
  end

  test "should update response" do
    patch :update, id: @goruco_response, response: { city: @goruco_response.city, state: @goruco_response.state, stay: @goruco_response.stay, thoughts: @goruco_response.thoughts, years_using_ruby: @goruco_response.years_using_ruby }
    assert_redirected_to response_path(assigns(:response))
  end

  test "should destroy response" do
    assert_difference('Response.count', -1) do
      delete :destroy, id: @goruco_response
    end

    assert_redirected_to responses_path
  end
end
