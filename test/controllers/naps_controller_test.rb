require 'test_helper'

class NapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nap = naps(:one)
  end

  test "should get index" do
    get naps_url, as: :json
    assert_response :success
  end

  test "should create nap" do
    assert_difference('Nap.count') do
      post naps_url, params: { nap: { children_id: @nap.children_id, date: @nap.date, duration: @nap.duration, time: @nap.time } }, as: :json
    end

    assert_response 201
  end

  test "should show nap" do
    get nap_url(@nap), as: :json
    assert_response :success
  end

  test "should update nap" do
    patch nap_url(@nap), params: { nap: { children_id: @nap.children_id, date: @nap.date, duration: @nap.duration, time: @nap.time } }, as: :json
    assert_response 200
  end

  test "should destroy nap" do
    assert_difference('Nap.count', -1) do
      delete nap_url(@nap), as: :json
    end

    assert_response 204
  end
end
