json.array!(@lookups) do |lookup|
  json.extract! lookup, :url, :name, :date_saved, :user_id
  json.url lookup_url(lookup, format: :json)
end