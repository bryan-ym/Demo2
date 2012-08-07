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
      post :create, bg_setup: { bg_productline: @bg_setup.bg_productline, bg_role: @bg_setup.bg_role, bg_status: @bg_setup.bg_status, br_dept1: @bg_setup.br_dept1 }
    end

    assert_redirected_to bg_setup_path(assigns(:bg_setup))
  end

  test "should show bg_setup" do
    get :show, id: @bg_setup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bg_setup
    assert_response :success
  end

  test "should update bg_setup" do
    put :update, id: @bg_setup, bg_setup: { bg_productline: @bg_setup.bg_productline, bg_role: @bg_setup.bg_role, bg_status: @bg_setup.bg_status, br_dept1: @bg_setup.br_dept1 }
    assert_redirected_to bg_setup_path(assigns(:bg_setup))
  end

  test "should destroy bg_setup" do
    assert_difference('BgSetup.count', -1) do
      delete :destroy, id: @bg_setup
    end

    assert_redirected_to bg_setups_path
  end
end
