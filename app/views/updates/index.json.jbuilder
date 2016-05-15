json.array!(@updates) do |update|
  json.extract! update, :id, :version, :date
  json.url update_url(update, format: :json)
end
