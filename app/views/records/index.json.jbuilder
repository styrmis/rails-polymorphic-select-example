json.array!(@records) do |record|
  json.extract! record, :id, :owner_id, :owner_type
  json.url record_url(record, format: :json)
end
