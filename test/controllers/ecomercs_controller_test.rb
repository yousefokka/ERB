require 'test_helper'

class EcomercsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ecomerc = ecomercs(:one)
  end

  test "should get index" do
    get ecomercs_url
    assert_response :success
  end

  test "should get new" do
    get new_ecomerc_url
    assert_response :success
  end

  test "should create ecomerc" do
    assert_difference('Ecomerc.count') do
      post ecomercs_url, params: { ecomerc: { department_id: @ecomerc.department_id, location: @ecomerc.location, name: @ecomerc.name } }
    end

    assert_redirected_to ecomerc_url(Ecomerc.last)
  end

  test "should show ecomerc" do
    get ecomerc_url(@ecomerc)
    assert_response :success
  end

  test "should get edit" do
    get edit_ecomerc_url(@ecomerc)
    assert_response :success
  end

  test "should update ecomerc" do
    patch ecomerc_url(@ecomerc), params: { ecomerc: { department_id: @ecomerc.department_id, location: @ecomerc.location, name: @ecomerc.name } }
    assert_redirected_to ecomerc_url(@ecomerc)
  end

  test "should destroy ecomerc" do
    assert_difference('Ecomerc.count', -1) do
      delete ecomerc_url(@ecomerc)
    end

    assert_redirected_to ecomercs_url
  end
end
