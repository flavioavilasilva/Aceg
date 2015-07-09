require 'test_helper'

class StatusConfirmacaoDoadorsControllerTest < ActionController::TestCase
  setup do
    @status_confirmacao_doador = status_confirmacao_doadors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_confirmacao_doadors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_confirmacao_doador" do
    assert_difference('StatusConfirmacaoDoador.count') do
      post :create, status_confirmacao_doador: { status_confirmacao_doador: @status_confirmacao_doador.status_confirmacao_doador }
    end

    assert_redirected_to status_confirmacao_doador_path(assigns(:status_confirmacao_doador))
  end

  test "should show status_confirmacao_doador" do
    get :show, id: @status_confirmacao_doador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_confirmacao_doador
    assert_response :success
  end

  test "should update status_confirmacao_doador" do
    put :update, id: @status_confirmacao_doador, status_confirmacao_doador: { status_confirmacao_doador: @status_confirmacao_doador.status_confirmacao_doador }
    assert_redirected_to status_confirmacao_doador_path(assigns(:status_confirmacao_doador))
  end

  test "should destroy status_confirmacao_doador" do
    assert_difference('StatusConfirmacaoDoador.count', -1) do
      delete :destroy, id: @status_confirmacao_doador
    end

    assert_redirected_to status_confirmacao_doadors_path
  end
end
