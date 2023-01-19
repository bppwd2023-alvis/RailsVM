require "test_helper"

class Web::EventsControllerTest < ActionDispatch::IntegrationTest
  test "should get calandar" do
    get web_events_calandar_url
    assert_response :success
  end

  test "should get show" do
    get web_events_show_url
    assert_response :success
  end
end
