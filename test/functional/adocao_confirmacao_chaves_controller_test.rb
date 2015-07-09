require 'test_helper'

class AdocaoConfirmacaoChavesControllerTest < ActionController::TestCase
  setup do
    @adocao_confirmacao_chafe = adocao_confirmacao_chaves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adocao_confirmacao_chaves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adocao_confirmacao_chafe" do
    assert_difference('AdocaoConfirmacaoChave.count') do
      post :create, adocao_confirmacao_chafe: { chave_valida: @adocao_confirmacao_chafe.chave_valida, data_criacao: @adocao_confirmacao_chafe.data_criacao, dias_validade: @adocao_confirmacao_chafe.dias_validade, key: @adocao_confirmacao_chafe.key }
    end

    assert_redirected_to adocao_confirmacao_chafe_path(assigns(:adocao_confirmacao_chafe))
  end

  test "should show adocao_confirmacao_chafe" do
    get :show, id: @adocao_confirmacao_chafe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adocao_confirmacao_chafe
    assert_response :success
  end

  test "should update adocao_confirmacao_chafe" do
    put :update, id: @adocao_confirmacao_chafe, adocao_confirmacao_chafe: { chave_valida: @adocao_confirmacao_chafe.chave_valida, data_criacao: @adocao_confirmacao_chafe.data_criacao, dias_validade: @adocao_confirmacao_chafe.dias_validade, key: @adocao_confirmacao_chafe.key }
    assert_redirected_to adocao_confirmacao_chafe_path(assigns(:adocao_confirmacao_chafe))
  end

  test "should destroy adocao_confirmacao_chafe" do
    assert_difference('AdocaoConfirmacaoChave.count', -1) do
      delete :destroy, id: @adocao_confirmacao_chafe
    end

    assert_redirected_to adocao_confirmacao_chaves_path
  end
end
