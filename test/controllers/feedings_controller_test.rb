require 'test_helper'

class FeedingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @feeding = feedings(:one)
  end

  test "should get index" do
    get feedings_url, as: :json
    assert_response :success
  end

  test "should create feeding" do
    assert_difference('Feeding.count') do
      post feedings_url, params: { feeding: { amount: @feeding.amount, children_id: @feeding.children_id, date: @feeding.date, duration: @feeding.duration, time: @feeding.time, type: @feeding.type } }, as: :json
    end

    assert_response 201
  end

  test "should show feeding" do
    get feeding_url(@feeding), as: :json
    assert_response :success
  end

  test "should update feeding" do
    patch feeding_url(@feeding), params: { feeding: { amount: @feeding.amount, children_id: @feeding.children_id, date: @feeding.date, duration: @feeding.duration, time: @feeding.time, type: @feeding.type } }, as: :json
    assert_response 200
  end

  test "should destroy feeding" do
    assert_difference('Feeding.count', -1) do
      delete feeding_url(@feeding), as: :json
    end

    assert_response 204
  end
end
