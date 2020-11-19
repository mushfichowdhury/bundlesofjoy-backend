require 'test_helper'

class JournalEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @journal_entry = journal_entries(:one)
  end

  test "should get index" do
    get journal_entries_url, as: :json
    assert_response :success
  end

  test "should create journal_entry" do
    assert_difference('JournalEntry.count') do
      post journal_entries_url, params: { journal_entry: { content: @journal_entry.content, date: @journal_entry.date, image: @journal_entry.image, time: @journal_entry.time, user_id: @journal_entry.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show journal_entry" do
    get journal_entry_url(@journal_entry), as: :json
    assert_response :success
  end

  test "should update journal_entry" do
    patch journal_entry_url(@journal_entry), params: { journal_entry: { content: @journal_entry.content, date: @journal_entry.date, image: @journal_entry.image, time: @journal_entry.time, user_id: @journal_entry.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy journal_entry" do
    assert_difference('JournalEntry.count', -1) do
      delete journal_entry_url(@journal_entry), as: :json
    end

    assert_response 204
  end
end
