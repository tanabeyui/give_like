require "test_helper"

class Admin::ResponsesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_responses_index_url
    assert_response :success
  end
end
