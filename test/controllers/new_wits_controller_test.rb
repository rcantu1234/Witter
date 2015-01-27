require 'test_helper'

class NewWitsControllerTest < ActionController::TestCase
  setup do
    @new_wit = new_wits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:new_wits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create new_wit" do
    assert_difference('NewWit.count') do
      post :create, new_wit: { message: @new_wit.message }
    end

    assert_redirected_to new_wit_path(assigns(:new_wit))
  end

  test "should show new_wit" do
    get :show, id: @new_wit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @new_wit
    assert_response :success
  end

  test "should update new_wit" do
    patch :update, id: @new_wit, new_wit: { message: @new_wit.message }
    assert_redirected_to new_wit_path(assigns(:new_wit))
  end

  test "should destroy new_wit" do
    assert_difference('NewWit.count', -1) do
      delete :destroy, id: @new_wit
    end

    assert_redirected_to new_wits_path
  end
end
