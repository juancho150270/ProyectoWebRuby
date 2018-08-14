rails g scaffold Student id:integer primer_nombre:string segundo_nombre:string primer_apellido:string segundo_apellido:string fecha_nacimiento:date direccion:string genero_id:integer grado_id:integer fecha_creacion:date imagen:binary jornada_id:integer acudiente_id:integer numero_identificacion:integer tipo_documentacion_id:integer
rails g scaffold Attendant id:integer primer_nombre:string segundo_nombre:string primer_apellido:string segundo_apellido:string telefono_fijo:string telefono_celular:string direccion:string correo:string parentesco:integer fecha_creacion:date cedula:integer tipo_documento_id:integer genero:integer
rails g scaffold Gender id:integer descripcion:string fecha_creacion:date
rails g scaffold Grade id:integer descripcion:string fecha_creacion:date
rails g scaffold ObserverDetail id:integer fecha_creacion:date fecha_modificacion:date tipo_seguimiento:integer fecha_sucesos:date observacion:string compromisos:string obs_encabezado_id:integer
rails g scaffold ObserverHead id:integer fecha_creacion:date estudiante_id:integer usuario_id:integer titulo:string estado:integer
rails g scaffold Profile id:integer descripcion:string fecha_creacion:date
rails g scaffold TracingType id:integer descripcion:string fecha_creacion:date
rails g scaffold User id:integer login:string perfil_id:integer password:string primer_nombre:string segundo_nombre:string primer_apellido:string segundo_apellido:string telefono:string correo:string fecha_creacion:date tipo_documento_id:integer cedula:integer
rails g scaffold WorkingDay id:integer descripcion:string fecha_creacion:date
rails g scaffold ObserverState id:integer descripcion:string fecha_creacion:date
rails g scaffold DocumentType id:integer descripcion:string fecha_creacion:date
rails g scaffold KinType id:integer descripcion:string fecha_creacion:date
