require 'test_helper'

class TipoPerfisControllerTest < ActionController::TestCase
  setup do
    @tipo_perfil = tipo_perfis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_perfis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_perfil" do
    assert_difference('TipoPerfil.count') do
      post :create, tipo_perfil: { tipo_perfil: @tipo_perfil.tipo_perfil }
    end

    assert_redirected_to tipo_perfil_path(assigns(:tipo_perfil))
  end

  test "should show tipo_perfil" do
    get :show, id: @tipo_perfil
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_perfil
    assert_response :success
  end

  test "should update tipo_perfil" do
    put :update, id: @tipo_perfil, tipo_perfil: { tipo_perfil: @tipo_perfil.tipo_perfil }
    assert_redirected_to tipo_perfil_path(assigns(:tipo_perfil))
  end

  test "should destroy tipo_perfil" do
    assert_difference('TipoPerfil.count', -1) do
      delete :destroy, id: @tipo_perfil
    end

    assert_redirected_to tipo_perfis_path
  end
end
