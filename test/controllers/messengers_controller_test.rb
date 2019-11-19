require 'test_helper'

class MessengersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get messengers_index_url
    assert_response :success
  end

  test "should get show" do
    get messengers_show_url
    assert_response :success
  end

end
