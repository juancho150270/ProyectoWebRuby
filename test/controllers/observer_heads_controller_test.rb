require 'test_helper'

class ObserverHeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @observer_head = observer_heads(:one)
  end

  test "should get index" do
    get observer_heads_url
    assert_response :success
  end

  test "should get new" do
    get new_observer_head_url
    assert_response :success
  end

  test "should create observer_head" do
    assert_difference('ObserverHead.count') do
      post observer_heads_url, params: { observer_head: { estado: @observer_head.estado, estudiante_id: @observer_head.estudiante_id, fecha_creacion: @observer_head.fecha_creacion, id: @observer_head.id, titulo: @observer_head.titulo, usuario_id: @observer_head.usuario_id } }
    end

    assert_redirected_to observer_head_url(ObserverHead.last)
  end

  test "should show observer_head" do
    get observer_head_url(@observer_head)
    assert_response :success
  end

  test "should get edit" do
    get edit_observer_head_url(@observer_head)
    assert_response :success
  end

  test "should update observer_head" do
    patch observer_head_url(@observer_head), params: { observer_head: { estado: @observer_head.estado, estudiante_id: @observer_head.estudiante_id, fecha_creacion: @observer_head.fecha_creacion, id: @observer_head.id, titulo: @observer_head.titulo, usuario_id: @observer_head.usuario_id } }
    assert_redirected_to observer_head_url(@observer_head)
  end

  test "should destroy observer_head" do
    assert_difference('ObserverHead.count', -1) do
      delete observer_head_url(@observer_head)
    end

    assert_redirected_to observer_heads_url
  end
end
