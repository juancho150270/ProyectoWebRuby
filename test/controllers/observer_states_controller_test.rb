require 'test_helper'

class ObserverStatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @observer_state = observer_states(:one)
  end

  test "should get index" do
    get observer_states_url
    assert_response :success
  end

  test "should get new" do
    get new_observer_state_url
    assert_response :success
  end

  test "should create observer_state" do
    assert_difference('ObserverState.count') do
      post observer_states_url, params: { observer_state: { descripcion: @observer_state.descripcion, fecha_creacion: @observer_state.fecha_creacion, id: @observer_state.id } }
    end

    assert_redirected_to observer_state_url(ObserverState.last)
  end

  test "should show observer_state" do
    get observer_state_url(@observer_state)
    assert_response :success
  end

  test "should get edit" do
    get edit_observer_state_url(@observer_state)
    assert_response :success
  end

  test "should update observer_state" do
    patch observer_state_url(@observer_state), params: { observer_state: { descripcion: @observer_state.descripcion, fecha_creacion: @observer_state.fecha_creacion, id: @observer_state.id } }
    assert_redirected_to observer_state_url(@observer_state)
  end

  test "should destroy observer_state" do
    assert_difference('ObserverState.count', -1) do
      delete observer_state_url(@observer_state)
    end

    assert_redirected_to observer_states_url
  end
end
