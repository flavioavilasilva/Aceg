require 'test_helper'

class AutenticacaosControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_create_invalid
    Autenticacao.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Autenticacao.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to autenticacaos_url
  end

  def test_destroy
    autenticacao = Autenticacao.first
    delete :destroy, :id => autenticacao
    assert_redirected_to autenticacaos_url
    assert !Autenticacao.exists?(autenticacao.id)
  end
end
