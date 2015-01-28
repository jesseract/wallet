json.array!(@registers) do |register|
  json.extract! register, :id, :transaction, :total
  json.url register_url(register, format: :json)
end
