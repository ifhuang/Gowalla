require 'test_helper'

class GowallaTotalCheckinsControllerTest < ActionController::TestCase
  setup do
    @gowalla_total_checkin = gowalla_total_checkins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gowalla_total_checkins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gowalla_total_checkin" do
    assert_difference('GowallaTotalCheckin.count') do
      post :create, gowalla_total_checkin: @gowalla_total_checkin.attributes
    end

    assert_redirected_to gowalla_total_checkin_path(assigns(:gowalla_total_checkin))
  end

  test "should show gowalla_total_checkin" do
    get :show, id: @gowalla_total_checkin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gowalla_total_checkin
    assert_response :success
  end

  test "should update gowalla_total_checkin" do
    put :update, id: @gowalla_total_checkin, gowalla_total_checkin: @gowalla_total_checkin.attributes
    assert_redirected_to gowalla_total_checkin_path(assigns(:gowalla_total_checkin))
  end

  test "should destroy gowalla_total_checkin" do
    assert_difference('GowallaTotalCheckin.count', -1) do
      delete :destroy, id: @gowalla_total_checkin
    end

    assert_redirected_to gowalla_total_checkins_path
  end
end
