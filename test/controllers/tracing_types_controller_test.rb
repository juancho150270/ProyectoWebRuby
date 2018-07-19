require 'test_helper'

class TracingTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tracing_type = tracing_types(:one)
  end

  test "should get index" do
    get tracing_types_url
    assert_response :success
  end

  test "should get new" do
    get new_tracing_type_url
    assert_response :success
  end

  test "should create tracing_type" do
    assert_difference('TracingType.count') do
      post tracing_types_url, params: { tracing_type: { descripcion: @tracing_type.descripcion, fecha_creacion: @tracing_type.fecha_creacion, id: @tracing_type.id } }
    end

    assert_redirected_to tracing_type_url(TracingType.last)
  end

  test "should show tracing_type" do
    get tracing_type_url(@tracing_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_tracing_type_url(@tracing_type)
    assert_response :success
  end

  test "should update tracing_type" do
    patch tracing_type_url(@tracing_type), params: { tracing_type: { descripcion: @tracing_type.descripcion, fecha_creacion: @tracing_type.fecha_creacion, id: @tracing_type.id } }
    assert_redirected_to tracing_type_url(@tracing_type)
  end

  test "should destroy tracing_type" do
    assert_difference('TracingType.count', -1) do
      delete tracing_type_url(@tracing_type)
    end

    assert_redirected_to tracing_types_url
  end
end
