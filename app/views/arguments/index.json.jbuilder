json.array!(@arguments) do |argument|
  json.extract! argument, :id, :parent_id, :parent_type, :body
  json.url argument_url(argument, format: :json)
end
