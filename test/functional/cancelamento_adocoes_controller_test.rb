require 'test_helper'

class CancelamentoAdocoesControllerTest < ActionController::TestCase
  setup do
    @cancelamento_adocao = cancelamento_adocoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cancelamento_adocoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cancelamento_adocao" do
    assert_difference('CancelamentoAdocao.count') do
      post :create, cancelamento_adocao: { adocao_animal_id: @cancelamento_adocao.adocao_animal_id, doador_animal_id: @cancelamento_adocao.doador_animal_id, motivo_cancelamento: @cancelamento_adocao.motivo_cancelamento, motivo_cancelamento_id: @cancelamento_adocao.motivo_cancelamento_id }
    end

    assert_redirected_to cancelamento_adocao_path(assigns(:cancelamento_adocao))
  end

  test "should show cancelamento_adocao" do
    get :show, id: @cancelamento_adocao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cancelamento_adocao
    assert_response :success
  end

  test "should update cancelamento_adocao" do
    put :update, id: @cancelamento_adocao, cancelamento_adocao: { adocao_animal_id: @cancelamento_adocao.adocao_animal_id, doador_animal_id: @cancelamento_adocao.doador_animal_id, motivo_cancelamento: @cancelamento_adocao.motivo_cancelamento, motivo_cancelamento_id: @cancelamento_adocao.motivo_cancelamento_id }
    assert_redirected_to cancelamento_adocao_path(assigns(:cancelamento_adocao))
  end

  test "should destroy cancelamento_adocao" do
    assert_difference('CancelamentoAdocao.count', -1) do
      delete :destroy, id: @cancelamento_adocao
    end

    assert_redirected_to cancelamento_adocoes_path
  end
end
