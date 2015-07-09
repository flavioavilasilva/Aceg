require 'test_helper'

class FeiraAdocoesControllerTest < ActionController::TestCase
  setup do
    @feira_adocao = feira_adocoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feira_adocoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feira_adocao" do
    assert_difference('FeiraAdocao.count') do
      post :create, feira_adocao: { descricao: @feira_adocao.descricao, endereco_feira_adocao_id: @feira_adocao.endereco_feira_adocao_id, fim_feira: @feira_adocao.fim_feira, inicio_feira: @feira_adocao.inicio_feira, nome: @feira_adocao.nome, usuario_id: @feira_adocao.usuario_id }
    end

    assert_redirected_to feira_adocao_path(assigns(:feira_adocao))
  end

  test "should show feira_adocao" do
    get :show, id: @feira_adocao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @feira_adocao
    assert_response :success
  end

  test "should update feira_adocao" do
    put :update, id: @feira_adocao, feira_adocao: { descricao: @feira_adocao.descricao, endereco_feira_adocao_id: @feira_adocao.endereco_feira_adocao_id, fim_feira: @feira_adocao.fim_feira, inicio_feira: @feira_adocao.inicio_feira, nome: @feira_adocao.nome, usuario_id: @feira_adocao.usuario_id }
    assert_redirected_to feira_adocao_path(assigns(:feira_adocao))
  end

  test "should destroy feira_adocao" do
    assert_difference('FeiraAdocao.count', -1) do
      delete :destroy, id: @feira_adocao
    end

    assert_redirected_to feira_adocoes_path
  end
end
