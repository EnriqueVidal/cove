require 'test_helper'

class IssuerControllerTest < ActionController::TestCase
  def setup
    assert @issuer = Factory.create(:issuer)
  end

  test "should get index" do
    get :index
    assert_response :success
  end
end