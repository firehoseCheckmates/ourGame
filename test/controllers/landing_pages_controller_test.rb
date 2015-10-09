require 'test_helper'

class LandingPagesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'home page loads' do 
  	get :index
  	assert_response :success
  end
  	
end
