require 'test_helper'

class SchedulesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get schedules_index_url
    assert_response :success
  end

  test "should get search" do
    get schedules_search_url
    assert_response :success
  end

end
