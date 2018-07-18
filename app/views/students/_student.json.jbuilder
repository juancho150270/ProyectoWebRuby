json.extract! student, :id, :primer_nombre, :segundo_nombre, :primer_apellido, :segundo_apellido, :fecha_nacimiento, :direccion, :genero_id, :grado_id, :fecha_creacion, :jornada_id, :imagen, :created_at, :updated_at
json.url student_url(student, format: :json)
