require 'test_helper'

class TipoAnimaisControllerTest < ActionController::TestCase
  setup do
    @tipo_animal = tipo_animais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_animais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_animal" do
    assert_difference('TipoAnimal.count') do
      post :create, tipo_animal: { tipo_animal: @tipo_animal.tipo_animal }
    end

    assert_redirected_to tipo_animal_path(assigns(:tipo_animal))
  end

  test "should show tipo_animal" do
    get :show, id: @tipo_animal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_animal
    assert_response :success
  end

  test "should update tipo_animal" do
    put :update, id: @tipo_animal, tipo_animal: { tipo_animal: @tipo_animal.tipo_animal }
    assert_redirected_to tipo_animal_path(assigns(:tipo_animal))
  end

  test "should destroy tipo_animal" do
    assert_difference('TipoAnimal.count', -1) do
      delete :destroy, id: @tipo_animal
    end

    assert_redirected_to tipo_animais_path
  end
end
