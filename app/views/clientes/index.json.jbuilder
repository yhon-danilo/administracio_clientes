json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nombre, :edad, :apellidos, :direccion
  json.url cliente_url(cliente, format: :json)
end
