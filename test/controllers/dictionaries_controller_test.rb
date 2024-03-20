require "test_helper"

class DictionariesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get root_path
    assert_response :success
  end
end
