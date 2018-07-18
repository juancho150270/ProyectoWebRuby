json.extract! user, :id, :login, :perfil_id, :password, :primer_nombre, :segundo_nombre, :primer_apellido, :segundo_apellido, :telefono, :created_at, :updated_at
json.url user_url(user, format: :json)
