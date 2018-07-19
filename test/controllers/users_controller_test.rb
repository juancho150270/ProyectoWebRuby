require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { cedula: @user.cedula, correo: @user.correo, fecha_creacion: @user.fecha_creacion, id: @user.id, login: @user.login, password: @user.password, perfil_id: @user.perfil_id, primer_apellido: @user.primer_apellido, primer_nombre: @user.primer_nombre, segundo_apellido: @user.segundo_apellido, segundo_nombre: @user.segundo_nombre, telefono: @user.telefono, tipo_documento_id: @user.tipo_documento_id } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { cedula: @user.cedula, correo: @user.correo, fecha_creacion: @user.fecha_creacion, id: @user.id, login: @user.login, password: @user.password, perfil_id: @user.perfil_id, primer_apellido: @user.primer_apellido, primer_nombre: @user.primer_nombre, segundo_apellido: @user.segundo_apellido, segundo_nombre: @user.segundo_nombre, telefono: @user.telefono, tipo_documento_id: @user.tipo_documento_id } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
