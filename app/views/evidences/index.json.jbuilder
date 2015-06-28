json.array!(@evidences) do |evidence|
  json.extract! evidence, :id, :parent_id, :parent_type, :link, :title
  json.url evidence_url(evidence, format: :json)
end
