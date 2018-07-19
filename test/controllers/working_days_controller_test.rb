require 'test_helper'

class WorkingDaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @working_day = working_days(:one)
  end

  test "should get index" do
    get working_days_url
    assert_response :success
  end

  test "should get new" do
    get new_working_day_url
    assert_response :success
  end

  test "should create working_day" do
    assert_difference('WorkingDay.count') do
      post working_days_url, params: { working_day: { descripcion: @working_day.descripcion, fecha_creacion: @working_day.fecha_creacion, id: @working_day.id } }
    end

    assert_redirected_to working_day_url(WorkingDay.last)
  end

  test "should show working_day" do
    get working_day_url(@working_day)
    assert_response :success
  end

  test "should get edit" do
    get edit_working_day_url(@working_day)
    assert_response :success
  end

  test "should update working_day" do
    patch working_day_url(@working_day), params: { working_day: { descripcion: @working_day.descripcion, fecha_creacion: @working_day.fecha_creacion, id: @working_day.id } }
    assert_redirected_to working_day_url(@working_day)
  end

  test "should destroy working_day" do
    assert_difference('WorkingDay.count', -1) do
      delete working_day_url(@working_day)
    end

    assert_redirected_to working_days_url
  end
end
