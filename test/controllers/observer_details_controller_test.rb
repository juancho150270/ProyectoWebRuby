require 'test_helper'

class ObserverDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @observer_detail = observer_details(:one)
  end

  test "should get index" do
    get observer_details_url
    assert_response :success
  end

  test "should get new" do
    get new_observer_detail_url
    assert_response :success
  end

  test "should create observer_detail" do
    assert_difference('ObserverDetail.count') do
      post observer_details_url, params: { observer_detail: { compromisos: @observer_detail.compromisos, fecha_creacion: @observer_detail.fecha_creacion, fecha_modificacion: @observer_detail.fecha_modificacion, fecha_sucesos: @observer_detail.fecha_sucesos, id: @observer_detail.id, obs_encabezado_id: @observer_detail.obs_encabezado_id, observacion: @observer_detail.observacion, tipo_seguimiento: @observer_detail.tipo_seguimiento } }
    end

    assert_redirected_to observer_detail_url(ObserverDetail.last)
  end

  test "should show observer_detail" do
    get observer_detail_url(@observer_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_observer_detail_url(@observer_detail)
    assert_response :success
  end

  test "should update observer_detail" do
    patch observer_detail_url(@observer_detail), params: { observer_detail: { compromisos: @observer_detail.compromisos, fecha_creacion: @observer_detail.fecha_creacion, fecha_modificacion: @observer_detail.fecha_modificacion, fecha_sucesos: @observer_detail.fecha_sucesos, id: @observer_detail.id, obs_encabezado_id: @observer_detail.obs_encabezado_id, observacion: @observer_detail.observacion, tipo_seguimiento: @observer_detail.tipo_seguimiento } }
    assert_redirected_to observer_detail_url(@observer_detail)
  end

  test "should destroy observer_detail" do
    assert_difference('ObserverDetail.count', -1) do
      delete observer_detail_url(@observer_detail)
    end

    assert_redirected_to observer_details_url
  end
end
