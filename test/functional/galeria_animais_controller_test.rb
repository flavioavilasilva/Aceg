require 'test_helper'

class GaleriaAnimaisControllerTest < ActionController::TestCase
  setup do
    @galeria_animal = galeria_animais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:galeria_animais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create galeria_animal" do
    assert_difference('GaleriaAnimal.count') do
      post :create, galeria_animal: { animal_id: @galeria_animal.animal_id, descricao: @galeria_animal.descricao }
    end

    assert_redirected_to galeria_animal_path(assigns(:galeria_animal))
  end

  test "should show galeria_animal" do
    get :show, id: @galeria_animal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @galeria_animal
    assert_response :success
  end

  test "should update galeria_animal" do
    put :update, id: @galeria_animal, galeria_animal: { animal_id: @galeria_animal.animal_id, descricao: @galeria_animal.descricao }
    assert_redirected_to galeria_animal_path(assigns(:galeria_animal))
  end

  test "should destroy galeria_animal" do
    assert_difference('GaleriaAnimal.count', -1) do
      delete :destroy, id: @galeria_animal
    end

    assert_redirected_to galeria_animais_path
  end
end
