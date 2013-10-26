require 'test_helper'

class ArtTypesControllerTest < ActionController::TestCase
  setup do
    @art_type = art_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:art_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create art_type" do
    assert_difference('ArtType.count') do
      post :create, art_type: { type_of_art: @art_type.type_of_art }
    end

    assert_redirected_to art_type_path(assigns(:art_type))
  end

  test "should show art_type" do
    get :show, id: @art_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @art_type
    assert_response :success
  end

  test "should update art_type" do
    put :update, id: @art_type, art_type: { type_of_art: @art_type.type_of_art }
    assert_redirected_to art_type_path(assigns(:art_type))
  end

  test "should destroy art_type" do
    assert_difference('ArtType.count', -1) do
      delete :destroy, id: @art_type
    end

    assert_redirected_to art_types_path
  end
end
