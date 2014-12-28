json.array!(@rooms) do |room|
  json.extract! room, :id, :nummer
  json.url room_url(room, format: :json)
end
