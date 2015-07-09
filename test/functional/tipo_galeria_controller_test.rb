require 'test_helper'

class TipoGaleriaControllerTest < ActionController::TestCase
  setup do
    @tipo_galerium = tipo_galeria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_galeria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_galerium" do
    assert_difference('TipoGalerium.count') do
      post :create, tipo_galerium: { tipo: @tipo_galerium.tipo }
    end

    assert_redirected_to tipo_galerium_path(assigns(:tipo_galerium))
  end

  test "should show tipo_galerium" do
    get :show, id: @tipo_galerium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_galerium
    assert_response :success
  end

  test "should update tipo_galerium" do
    put :update, id: @tipo_galerium, tipo_galerium: { tipo: @tipo_galerium.tipo }
    assert_redirected_to tipo_galerium_path(assigns(:tipo_galerium))
  end

  test "should destroy tipo_galerium" do
    assert_difference('TipoGalerium.count', -1) do
      delete :destroy, id: @tipo_galerium
    end

    assert_redirected_to tipo_galeria_path
  end
end
