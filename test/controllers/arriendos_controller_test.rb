require 'test_helper'

class ArriendosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get arriendos_index_url
    assert_response :success
  end

end
