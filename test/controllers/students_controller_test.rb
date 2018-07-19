require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get students_url
    assert_response :success
  end

  test "should get new" do
    get new_student_url
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post students_url, params: { student: { acudiente_id: @student.acudiente_id, direccion: @student.direccion, fecha_creacion: @student.fecha_creacion, fecha_nacimiento: @student.fecha_nacimiento, genero_id: @student.genero_id, grado_id: @student.grado_id, id: @student.id, imagen: @student.imagen, jornada_id: @student.jornada_id, numero_identificacion: @student.numero_identificacion, primer_apellido: @student.primer_apellido, primer_nombre: @student.primer_nombre, segundo_apellido: @student.segundo_apellido, segundo_nombre: @student.segundo_nombre, tipo_documentacion_id: @student.tipo_documentacion_id } }
    end

    assert_redirected_to student_url(Student.last)
  end

  test "should show student" do
    get student_url(@student)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_url(@student)
    assert_response :success
  end

  test "should update student" do
    patch student_url(@student), params: { student: { acudiente_id: @student.acudiente_id, direccion: @student.direccion, fecha_creacion: @student.fecha_creacion, fecha_nacimiento: @student.fecha_nacimiento, genero_id: @student.genero_id, grado_id: @student.grado_id, id: @student.id, imagen: @student.imagen, jornada_id: @student.jornada_id, numero_identificacion: @student.numero_identificacion, primer_apellido: @student.primer_apellido, primer_nombre: @student.primer_nombre, segundo_apellido: @student.segundo_apellido, segundo_nombre: @student.segundo_nombre, tipo_documentacion_id: @student.tipo_documentacion_id } }
    assert_redirected_to student_url(@student)
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete student_url(@student)
    end

    assert_redirected_to students_url
  end
end
