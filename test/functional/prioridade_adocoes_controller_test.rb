require 'test_helper'

class PrioridadeAdocoesControllerTest < ActionController::TestCase
  setup do
    @prioridade_adocao = prioridade_adocoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prioridade_adocoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prioridade_adocao" do
    assert_difference('PrioridadeAdocao.count') do
      post :create, prioridade_adocao: { prioridade_adocao: @prioridade_adocao.prioridade_adocao }
    end

    assert_redirected_to prioridade_adocao_path(assigns(:prioridade_adocao))
  end

  test "should show prioridade_adocao" do
    get :show, id: @prioridade_adocao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prioridade_adocao
    assert_response :success
  end

  test "should update prioridade_adocao" do
    put :update, id: @prioridade_adocao, prioridade_adocao: { prioridade_adocao: @prioridade_adocao.prioridade_adocao }
    assert_redirected_to prioridade_adocao_path(assigns(:prioridade_adocao))
  end

  test "should destroy prioridade_adocao" do
    assert_difference('PrioridadeAdocao.count', -1) do
      delete :destroy, id: @prioridade_adocao
    end

    assert_redirected_to prioridade_adocoes_path
  end
end
