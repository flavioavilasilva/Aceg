require 'test_helper'

class ConfirmacaoAdocoesControllerTest < ActionController::TestCase
  setup do
    @confirmacao_adocao = confirmacao_adocoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:confirmacao_adocoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create confirmacao_adocao" do
    assert_difference('ConfirmacaoAdocao.count') do
      post :create, confirmacao_adocao: { adocao_animal_id: @confirmacao_adocao.adocao_animal_id, status_confirmacao_adotando_id: @confirmacao_adocao.status_confirmacao_adotando_id, status_confirmacao_doador_id: @confirmacao_adocao.status_confirmacao_doador_id }
    end

    assert_redirected_to confirmacao_adocao_path(assigns(:confirmacao_adocao))
  end

  test "should show confirmacao_adocao" do
    get :show, id: @confirmacao_adocao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @confirmacao_adocao
    assert_response :success
  end

  test "should update confirmacao_adocao" do
    put :update, id: @confirmacao_adocao, confirmacao_adocao: { adocao_animal_id: @confirmacao_adocao.adocao_animal_id, status_confirmacao_adotando_id: @confirmacao_adocao.status_confirmacao_adotando_id, status_confirmacao_doador_id: @confirmacao_adocao.status_confirmacao_doador_id }
    assert_redirected_to confirmacao_adocao_path(assigns(:confirmacao_adocao))
  end

  test "should destroy confirmacao_adocao" do
    assert_difference('ConfirmacaoAdocao.count', -1) do
      delete :destroy, id: @confirmacao_adocao
    end

    assert_redirected_to confirmacao_adocoes_path
  end
end
