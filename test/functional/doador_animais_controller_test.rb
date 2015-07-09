require 'test_helper'

class DoadorAnimaisControllerTest < ActionController::TestCase
  setup do
    @doador_animal = doador_animais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doador_animais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doador_animal" do
    assert_difference('DoadorAnimal.count') do
      post :create, doador_animal: { status_doador_id: @doador_animal.status_doador_id, usuario_id: @doador_animal.usuario_id }
    end

    assert_redirected_to doador_animal_path(assigns(:doador_animal))
  end

  test "should show doador_animal" do
    get :show, id: @doador_animal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doador_animal
    assert_response :success
  end

  test "should update doador_animal" do
    put :update, id: @doador_animal, doador_animal: { status_doador_id: @doador_animal.status_doador_id, usuario_id: @doador_animal.usuario_id }
    assert_redirected_to doador_animal_path(assigns(:doador_animal))
  end

  test "should destroy doador_animal" do
    assert_difference('DoadorAnimal.count', -1) do
      delete :destroy, id: @doador_animal
    end

    assert_redirected_to doador_animais_path
  end
end
