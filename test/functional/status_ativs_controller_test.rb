require 'test_helper'

class StatusAtivsControllerTest < ActionController::TestCase
  setup do
    @status_ativ = status_ativs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_ativs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_ativ" do
    assert_difference('StatusAtiv.count') do
      post :create, status_ativ: { status: @status_ativ.status }
    end

    assert_redirected_to status_ativ_path(assigns(:status_ativ))
  end

  test "should show status_ativ" do
    get :show, id: @status_ativ
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_ativ
    assert_response :success
  end

  test "should update status_ativ" do
    put :update, id: @status_ativ, status_ativ: { status: @status_ativ.status }
    assert_redirected_to status_ativ_path(assigns(:status_ativ))
  end

  test "should destroy status_ativ" do
    assert_difference('StatusAtiv.count', -1) do
      delete :destroy, id: @status_ativ
    end

    assert_redirected_to status_ativs_path
  end
end
