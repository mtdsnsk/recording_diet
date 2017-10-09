require 'test_helper'

class DietRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diet_record = diet_records(:one)
  end

  test "should get index" do
    get diet_records_url
    assert_response :success
  end

  test "should get new" do
    get new_diet_record_url
    assert_response :success
  end

  test "should create diet_record" do
    assert_difference('DietRecord.count') do
      post diet_records_url, params: { diet_record: { author: @diet_record.author, title: @diet_record.title } }
    end

    assert_redirected_to diet_record_url(DietRecord.last)
  end

  test "should show diet_record" do
    get diet_record_url(@diet_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_diet_record_url(@diet_record)
    assert_response :success
  end

  test "should update diet_record" do
    patch diet_record_url(@diet_record), params: { diet_record: { author: @diet_record.author, title: @diet_record.title } }
    assert_redirected_to diet_record_url(@diet_record)
  end

  test "should destroy diet_record" do
    assert_difference('DietRecord.count', -1) do
      delete diet_record_url(@diet_record)
    end

    assert_redirected_to diet_records_url
  end
end
