require 'test_helper'

class KinTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kin_type = kin_types(:one)
  end

  test "should get index" do
    get kin_types_url
    assert_response :success
  end

  test "should get new" do
    get new_kin_type_url
    assert_response :success
  end

  test "should create kin_type" do
    assert_difference('KinType.count') do
      post kin_types_url, params: { kin_type: { descripcion: @kin_type.descripcion, fecha_creacion: @kin_type.fecha_creacion, id: @kin_type.id } }
    end

    assert_redirected_to kin_type_url(KinType.last)
  end

  test "should show kin_type" do
    get kin_type_url(@kin_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_kin_type_url(@kin_type)
    assert_response :success
  end

  test "should update kin_type" do
    patch kin_type_url(@kin_type), params: { kin_type: { descripcion: @kin_type.descripcion, fecha_creacion: @kin_type.fecha_creacion, id: @kin_type.id } }
    assert_redirected_to kin_type_url(@kin_type)
  end

  test "should destroy kin_type" do
    assert_difference('KinType.count', -1) do
      delete kin_type_url(@kin_type)
    end

    assert_redirected_to kin_types_url
  end
end
