require 'test_helper'

class GowallaEdgesControllerTest < ActionController::TestCase
  setup do
    @gowalla_edge = gowalla_edges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gowalla_edges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gowalla_edge" do
    assert_difference('GowallaEdge.count') do
      post :create, gowalla_edge: @gowalla_edge.attributes
    end

    assert_redirected_to gowalla_edge_path(assigns(:gowalla_edge))
  end

  test "should show gowalla_edge" do
    get :show, id: @gowalla_edge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gowalla_edge
    assert_response :success
  end

  test "should update gowalla_edge" do
    put :update, id: @gowalla_edge, gowalla_edge: @gowalla_edge.attributes
    assert_redirected_to gowalla_edge_path(assigns(:gowalla_edge))
  end

  test "should destroy gowalla_edge" do
    assert_difference('GowallaEdge.count', -1) do
      delete :destroy, id: @gowalla_edge
    end

    assert_redirected_to gowalla_edges_path
  end
end
