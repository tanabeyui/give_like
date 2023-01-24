require "test_helper"

class Public::ResponsesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_responses_index_url
    assert_response :success
  end

  test "should get new" do
    get public_responses_new_url
    assert_response :success
  end
end
