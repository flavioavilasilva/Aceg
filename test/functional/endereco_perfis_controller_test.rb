require 'test_helper'

class EnderecoPerfisControllerTest < ActionController::TestCase
  setup do
    @endereco_perfil = endereco_perfis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:endereco_perfis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create endereco_perfil" do
    assert_difference('EnderecoPerfil.count') do
      post :create, endereco_perfil: { cep: @endereco_perfil.cep, cidade_id: @endereco_perfil.cidade_id, estado_id: @endereco_perfil.estado_id, numero: @endereco_perfil.numero, rua: @endereco_perfil.rua }
    end

    assert_redirected_to endereco_perfil_path(assigns(:endereco_perfil))
  end

  test "should show endereco_perfil" do
    get :show, id: @endereco_perfil
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @endereco_perfil
    assert_response :success
  end

  test "should update endereco_perfil" do
    put :update, id: @endereco_perfil, endereco_perfil: { cep: @endereco_perfil.cep, cidade_id: @endereco_perfil.cidade_id, estado_id: @endereco_perfil.estado_id, numero: @endereco_perfil.numero, rua: @endereco_perfil.rua }
    assert_redirected_to endereco_perfil_path(assigns(:endereco_perfil))
  end

  test "should destroy endereco_perfil" do
    assert_difference('EnderecoPerfil.count', -1) do
      delete :destroy, id: @endereco_perfil
    end

    assert_redirected_to endereco_perfis_path
  end
end
