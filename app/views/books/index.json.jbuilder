json.array!(@books) do |book|
  json.extract! book, :id, :title, :pages, :isbn, :genre
  json.url book_url(book, format: :json)
end
