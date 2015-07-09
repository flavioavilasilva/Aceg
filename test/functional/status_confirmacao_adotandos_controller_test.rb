require 'test_helper'

class StatusConfirmacaoAdotandosControllerTest < ActionController::TestCase
  setup do
    @status_confirmacao_adotando = status_confirmacao_adotandos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_confirmacao_adotandos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_confirmacao_adotando" do
    assert_difference('StatusConfirmacaoAdotando.count') do
      post :create, status_confirmacao_adotando: { status_confirmacao_adotando: @status_confirmacao_adotando.status_confirmacao_adotando }
    end

    assert_redirected_to status_confirmacao_adotando_path(assigns(:status_confirmacao_adotando))
  end

  test "should show status_confirmacao_adotando" do
    get :show, id: @status_confirmacao_adotando
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_confirmacao_adotando
    assert_response :success
  end

  test "should update status_confirmacao_adotando" do
    put :update, id: @status_confirmacao_adotando, status_confirmacao_adotando: { status_confirmacao_adotando: @status_confirmacao_adotando.status_confirmacao_adotando }
    assert_redirected_to status_confirmacao_adotando_path(assigns(:status_confirmacao_adotando))
  end

  test "should destroy status_confirmacao_adotando" do
    assert_difference('StatusConfirmacaoAdotando.count', -1) do
      delete :destroy, id: @status_confirmacao_adotando
    end

    assert_redirected_to status_confirmacao_adotandos_path
  end
end
