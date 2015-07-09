require 'test_helper'

class StatusAnimalsControllerTest < ActionController::TestCase
  setup do
    @status_animal = status_animals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_animals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_animal" do
    assert_difference('StatusAnimal.count') do
      post :create, status_animal: { status_animal: @status_animal.status_animal }
    end

    assert_redirected_to status_animal_path(assigns(:status_animal))
  end

  test "should show status_animal" do
    get :show, id: @status_animal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_animal
    assert_response :success
  end

  test "should update status_animal" do
    put :update, id: @status_animal, status_animal: { status_animal: @status_animal.status_animal }
    assert_redirected_to status_animal_path(assigns(:status_animal))
  end

  test "should destroy status_animal" do
    assert_difference('StatusAnimal.count', -1) do
      delete :destroy, id: @status_animal
    end

    assert_redirected_to status_animals_path
  end
end
