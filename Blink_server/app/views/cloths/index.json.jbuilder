json.array!(@cloths) do |cloth|
  json.extract! cloth, :id, :name, :beacon_identification_key, :user_id, :url
  json.url cloth_url(cloth, format: :json)
end
