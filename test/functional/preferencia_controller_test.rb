require 'test_helper'

class PreferenciaControllerTest < ActionController::TestCase
  setup do
    @preferencium = preferencia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:preferencia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create preferencium" do
    assert_difference('Preferencium.count') do
      post :create, preferencium: { cidade: @preferencium.cidade, cor: @preferencium.cor, estado: @preferencium.estado, foto: @preferencium.foto, peso: @preferencium.peso, porte: @preferencium.porte, prioridade_adocao: @preferencium.prioridade_adocao, tipo: @preferencium.tipo, tipo_doador: @preferencium.tipo_doador }
    end

    assert_redirected_to preferencium_path(assigns(:preferencium))
  end

  test "should show preferencium" do
    get :show, id: @preferencium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @preferencium
    assert_response :success
  end

  test "should update preferencium" do
    put :update, id: @preferencium, preferencium: { cidade: @preferencium.cidade, cor: @preferencium.cor, estado: @preferencium.estado, foto: @preferencium.foto, peso: @preferencium.peso, porte: @preferencium.porte, prioridade_adocao: @preferencium.prioridade_adocao, tipo: @preferencium.tipo, tipo_doador: @preferencium.tipo_doador }
    assert_redirected_to preferencium_path(assigns(:preferencium))
  end

  test "should destroy preferencium" do
    assert_difference('Preferencium.count', -1) do
      delete :destroy, id: @preferencium
    end

    assert_redirected_to preferencia_path
  end
end
