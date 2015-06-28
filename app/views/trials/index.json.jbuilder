json.array!(@trials) do |trial|
  json.extract! trial, :id, :title, :claim, :prosecutor_id, :defender_id, :ended_at
  json.url trial_url(trial, format: :json)
end
