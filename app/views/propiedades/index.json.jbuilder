json.array!(@propiedades) do |propiedad|
  json.extract! propiedad, :id, :nombre, :direccion, :valor, :estrato, :persona_id
  json.url propiedad_url(propiedad, format: :json)
end
