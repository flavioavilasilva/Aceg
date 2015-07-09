require 'test_helper'

class AdotandoAnimalsControllerTest < ActionController::TestCase
  setup do
    @adotando_animal = adotando_animals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adotando_animals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adotando_animal" do
    assert_difference('AdotandoAnimal.count') do
      post :create, adotando_animal: { adotando_desde: @adotando_animal.adotando_desde, status_adotando_id: @adotando_animal.status_adotando_id, usuario_id: @adotando_animal.usuario_id }
    end

    assert_redirected_to adotando_animal_path(assigns(:adotando_animal))
  end

  test "should show adotando_animal" do
    get :show, id: @adotando_animal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adotando_animal
    assert_response :success
  end

  test "should update adotando_animal" do
    put :update, id: @adotando_animal, adotando_animal: { adotando_desde: @adotando_animal.adotando_desde, status_adotando_id: @adotando_animal.status_adotando_id, usuario_id: @adotando_animal.usuario_id }
    assert_redirected_to adotando_animal_path(assigns(:adotando_animal))
  end

  test "should destroy adotando_animal" do
    assert_difference('AdotandoAnimal.count', -1) do
      delete :destroy, id: @adotando_animal
    end

    assert_redirected_to adotando_animals_path
  end
end
