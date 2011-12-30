require 'test_helper'

class ReservesControllerTest < ActionController::TestCase
  setup do
    @reserf = reserves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reserves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reserf" do
    assert_difference('Reserve.count') do
      post :create, reserf: @reserf.attributes
    end

    assert_redirected_to reserf_path(assigns(:reserf))
  end

  test "should show reserf" do
    get :show, id: @reserf.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reserf.to_param
    assert_response :success
  end

  test "should update reserf" do
    put :update, id: @reserf.to_param, reserf: @reserf.attributes
    assert_redirected_to reserf_path(assigns(:reserf))
  end

  test "should destroy reserf" do
    assert_difference('Reserve.count', -1) do
      delete :destroy, id: @reserf.to_param
    end

    assert_redirected_to reserves_path
  end
end
