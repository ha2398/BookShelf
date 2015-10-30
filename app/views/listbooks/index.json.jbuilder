json.array!(@listbooks) do |listbook|
  json.extract! listbook, :id
  json.url listbook_url(listbook, format: :json)
end
