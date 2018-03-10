require 'test_helper'

class SimulationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get simulation_index_url
    assert_response :success
  end

  test "should get search" do
    get simulation_search_url
    assert_response :success
  end

end
