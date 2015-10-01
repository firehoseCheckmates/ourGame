require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  test "game show page" do
    game = FactoryGirl.create(:game)
    get :show, :id => game.id
    assert_response :success
  end

  test "game new page" do
    game = FactoryGirl.create(:game)
    get :new, :id => game.id
    assert_response :success
  end
end
