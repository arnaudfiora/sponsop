require 'test_helper'

class AgeControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get age_new_url
    assert_response :success
  end

  test "should get create" do
    get age_create_url
    assert_response :success
  end

  test "should get index" do
    get age_index_url
    assert_response :success
  end

  test "should get show" do
    get age_show_url
    assert_response :success
  end

end
