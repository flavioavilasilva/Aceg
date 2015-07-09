require 'test_helper'

class StatusAdotandosControllerTest < ActionController::TestCase
  setup do
    @status_adotando = status_adotandos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_adotandos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_adotando" do
    assert_difference('StatusAdotando.count') do
      post :create, status_adotando: { status_adotando: @status_adotando.status_adotando }
    end

    assert_redirected_to status_adotando_path(assigns(:status_adotando))
  end

  test "should show status_adotando" do
    get :show, id: @status_adotando
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_adotando
    assert_response :success
  end

  test "should update status_adotando" do
    put :update, id: @status_adotando, status_adotando: { status_adotando: @status_adotando.status_adotando }
    assert_redirected_to status_adotando_path(assigns(:status_adotando))
  end

  test "should destroy status_adotando" do
    assert_difference('StatusAdotando.count', -1) do
      delete :destroy, id: @status_adotando
    end

    assert_redirected_to status_adotandos_path
  end
end
