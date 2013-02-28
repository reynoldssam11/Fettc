require 'test_helper'

class CommMethodsControllerTest < ActionController::TestCase
  setup do
    @comm_method = comm_methods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comm_methods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comm_method" do
    assert_difference('CommMethod.count') do
      post :create, comm_method: { address: @comm_method.address, frequency: @comm_method.frequency, method_type: @comm_method.method_type, user_id: @comm_method.user_id }
    end

    assert_redirected_to comm_method_path(assigns(:comm_method))
  end

  test "should show comm_method" do
    get :show, id: @comm_method
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comm_method
    assert_response :success
  end

  test "should update comm_method" do
    put :update, id: @comm_method, comm_method: { address: @comm_method.address, frequency: @comm_method.frequency, method_type: @comm_method.method_type, user_id: @comm_method.user_id }
    assert_redirected_to comm_method_path(assigns(:comm_method))
  end

  test "should destroy comm_method" do
    assert_difference('CommMethod.count', -1) do
      delete :destroy, id: @comm_method
    end

    assert_redirected_to comm_methods_path
  end
end
