json.array!(@questions) do |question|
  json.extract! question, :id, :parent_id, :parent_type, :query
  json.url question_url(question, format: :json)
end
