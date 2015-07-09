require 'test_helper'

class IndicacoesControllerTest < ActionController::TestCase
  setup do
    @indicacao = indicacoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:indicacoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create indicacao" do
    assert_difference('Indicacao.count') do
      post :create, indicacao: { comentario: @indicacao.comentario, estabelecimento_id: @indicacao.estabelecimento_id, nota: @indicacao.nota, usuario_id: @indicacao.usuario_id }
    end

    assert_redirected_to indicacao_path(assigns(:indicacao))
  end

  test "should show indicacao" do
    get :show, id: @indicacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @indicacao
    assert_response :success
  end

  test "should update indicacao" do
    put :update, id: @indicacao, indicacao: { comentario: @indicacao.comentario, estabelecimento_id: @indicacao.estabelecimento_id, nota: @indicacao.nota, usuario_id: @indicacao.usuario_id }
    assert_redirected_to indicacao_path(assigns(:indicacao))
  end

  test "should destroy indicacao" do
    assert_difference('Indicacao.count', -1) do
      delete :destroy, id: @indicacao
    end

    assert_redirected_to indicacoes_path
  end
end
