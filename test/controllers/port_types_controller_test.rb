require 'test_helper'

class PortTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @port_type = port_types(:one)
  end

  test "should get index" do
    get port_types_url
    assert_response :success
  end

  test "should get new" do
    get new_port_type_url
    assert_response :success
  end

  test "should create port_type" do
    assert_difference('PortType.count') do
      post port_types_url, params: { port_type: { name: @port_type.name } }
    end

    assert_redirected_to port_type_url(PortType.last)
  end

  test "should show port_type" do
    get port_type_url(@port_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_port_type_url(@port_type)
    assert_response :success
  end

  test "should update port_type" do
    patch port_type_url(@port_type), params: { port_type: { name: @port_type.name } }
    assert_redirected_to port_type_url(@port_type)
  end

  test "should destroy port_type" do
    assert_difference('PortType.count', -1) do
      delete port_type_url(@port_type)
    end

    assert_redirected_to port_types_url
  end
end
