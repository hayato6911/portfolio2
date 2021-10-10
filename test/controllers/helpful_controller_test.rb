require 'test_helper'

class HelpfulControllerTest < ActionDispatch::IntegrationTest
  test "should get Drives" do
    get helpful_Drives_url
    assert_response :success
  end

  test "should get index" do
    get helpful_index_url
    assert_response :success
  end

end
