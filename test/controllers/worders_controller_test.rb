require 'test_helper'

class WordersControllerTest < ActionController::TestCase
  setup do
    @worder = worders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:worders)
  end

  test "should create worder" do
    assert_difference('Worder.count') do
      post :create, worder: {  }
    end

    assert_response 201
  end

  test "should show worder" do
    get :show, id: @worder
    assert_response :success
  end

  test "should update worder" do
    put :update, id: @worder, worder: {  }
    assert_response 204
  end

  test "should destroy worder" do
    assert_difference('Worder.count', -1) do
      delete :destroy, id: @worder
    end

    assert_response 204
  end
end
