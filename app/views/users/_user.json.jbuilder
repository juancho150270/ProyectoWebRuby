json.extract! user, :id, :id, :login, :perfil_id, :password, :primer_nombre, :segundo_nombre, :primer_apellido, :segundo_apellido, :telefono, :correo, :fecha_creacion, :tipo_documento_id, :cedula, :created_at, :updated_at
json.url user_url(user, format: :json)
