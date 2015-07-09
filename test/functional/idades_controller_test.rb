require 'test_helper'

class IdadesControllerTest < ActionController::TestCase
  setup do
    @idade = idades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:idades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create idade" do
    assert_difference('Idade.count') do
      post :create, idade: { idade_animal: @idade.idade_animal }
    end

    assert_redirected_to idade_path(assigns(:idade))
  end

  test "should show idade" do
    get :show, id: @idade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @idade
    assert_response :success
  end

  test "should update idade" do
    put :update, id: @idade, idade: { idade_animal: @idade.idade_animal }
    assert_redirected_to idade_path(assigns(:idade))
  end

  test "should destroy idade" do
    assert_difference('Idade.count', -1) do
      delete :destroy, id: @idade
    end

    assert_redirected_to idades_path
  end
end
