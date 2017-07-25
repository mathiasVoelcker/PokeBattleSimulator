require 'test_helper'

class SimulationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get simulation_index_url
    assert_response :success
  end

  test "should get create" do
    get simulation_create_url
    assert_response :success
  end

  test "should get show" do
    get simulation_show_url
    assert_response :success
  end

end
