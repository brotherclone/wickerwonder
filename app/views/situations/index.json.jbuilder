json.array!(@situations) do |situation|
  json.extract! situation, :id
  json.url situation_url(situation, format: :json)
end
