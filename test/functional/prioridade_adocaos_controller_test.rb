require 'test_helper'

class PrioridadeAdocaosControllerTest < ActionController::TestCase
  setup do
    @prioridade_adocao = prioridade_adocaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prioridade_adocaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prioridade_adocao" do
    assert_difference('PrioridadeAdocao.count') do
      post :create, prioridade_adocao: { prioridade: @prioridade_adocao.prioridade }
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
    put :update, id: @prioridade_adocao, prioridade_adocao: { prioridade: @prioridade_adocao.prioridade }
    assert_redirected_to prioridade_adocao_path(assigns(:prioridade_adocao))
  end

  test "should destroy prioridade_adocao" do
    assert_difference('PrioridadeAdocao.count', -1) do
      delete :destroy, id: @prioridade_adocao
    end

    assert_redirected_to prioridade_adocaos_path
  end
end
