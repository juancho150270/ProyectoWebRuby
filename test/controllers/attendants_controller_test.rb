require 'test_helper'

class AttendantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attendant = attendants(:one)
  end

  test "should get index" do
    get attendants_url
    assert_response :success
  end

  test "should get new" do
    get new_attendant_url
    assert_response :success
  end

  test "should create attendant" do
    assert_difference('Attendant.count') do
      post attendants_url, params: { attendant: { cedula: @attendant.cedula, correo: @attendant.correo, direccion: @attendant.direccion, fecha_creacion: @attendant.fecha_creacion, genero: @attendant.genero, id: @attendant.id, parentesco: @attendant.parentesco, primer_apellido: @attendant.primer_apellido, primer_nombre: @attendant.primer_nombre, segundo_apellido: @attendant.segundo_apellido, segundo_nombre: @attendant.segundo_nombre, telefono_celular: @attendant.telefono_celular, telefono_fijo: @attendant.telefono_fijo, tipo_documento_id: @attendant.tipo_documento_id } }
    end

    assert_redirected_to attendant_url(Attendant.last)
  end

  test "should show attendant" do
    get attendant_url(@attendant)
    assert_response :success
  end

  test "should get edit" do
    get edit_attendant_url(@attendant)
    assert_response :success
  end

  test "should update attendant" do
    patch attendant_url(@attendant), params: { attendant: { cedula: @attendant.cedula, correo: @attendant.correo, direccion: @attendant.direccion, fecha_creacion: @attendant.fecha_creacion, genero: @attendant.genero, id: @attendant.id, parentesco: @attendant.parentesco, primer_apellido: @attendant.primer_apellido, primer_nombre: @attendant.primer_nombre, segundo_apellido: @attendant.segundo_apellido, segundo_nombre: @attendant.segundo_nombre, telefono_celular: @attendant.telefono_celular, telefono_fijo: @attendant.telefono_fijo, tipo_documento_id: @attendant.tipo_documento_id } }
    assert_redirected_to attendant_url(@attendant)
  end

  test "should destroy attendant" do
    assert_difference('Attendant.count', -1) do
      delete attendant_url(@attendant)
    end

    assert_redirected_to attendants_url
  end
end
