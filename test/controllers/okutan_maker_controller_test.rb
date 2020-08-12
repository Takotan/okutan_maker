require 'test_helper'

class OkutanMakerControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get okutan_maker_home_url
    assert_response :success
  end

end
