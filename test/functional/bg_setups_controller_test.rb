require 'test_helper'

class BgSetupsControllerTest < ActionController::TestCase
  setup do
    @bg_setup = bg_setups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bg_setups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bg_setup" do
    assert_difference('BgSetup.count') do
      post :create, :bg_setup => @bg_setup.attributes
    end

    assert_redirected_to bg_setup_path(assigns(:bg_setup))
  end

  test "should show bg_setup" do
    get :show, :id => @bg_setup.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @bg_setup.to_param
    assert_response :success
  end

  test "should update bg_setup" do
    put :update, :id => @bg_setup.to_param, :bg_setup => @bg_setup.attributes
    assert_redirected_to bg_setup_path(assigns(:bg_setup))
  end

  test "should destroy bg_setup" do
    assert_difference('BgSetup.count', -1) do
      delete :destroy, :id => @bg_setup.to_param
    end

    assert_redirected_to bg_setups_path
  end
end
