require 'test_helper'

class HairStylesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hair_styles_index_url
    assert_response :success
  end

end
