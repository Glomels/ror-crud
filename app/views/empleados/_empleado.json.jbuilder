json.extract! empleado, :id, :nombre, :apellido, :rfc, :puesto, :usuario_id, :sucursal_id, :created_at, :updated_at
json.url empleado_url(empleado, format: :json)
