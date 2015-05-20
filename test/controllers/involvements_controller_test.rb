require 'test_helper'

class InvolvementsControllerTest < ActionController::TestCase
  setup do
    @involvement = involvements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:involvements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create involvement" do
    assert_difference('Involvement.count') do
      post :create, involvement: { program_id: @involvement.program_id, work_id: @involvement.work_id }
    end

    assert_redirected_to involvement_path(assigns(:involvement))
  end

  test "should show involvement" do
    get :show, id: @involvement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @involvement
    assert_response :success
  end

  test "should update involvement" do
    patch :update, id: @involvement, involvement: { program_id: @involvement.program_id, work_id: @involvement.work_id }
    assert_redirected_to involvement_path(assigns(:involvement))
  end

  test "should destroy involvement" do
    assert_difference('Involvement.count', -1) do
      delete :destroy, id: @involvement
    end

    assert_redirected_to involvements_path
  end
end
