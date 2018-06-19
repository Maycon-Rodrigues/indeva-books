json.extract! book, :id, :code, :title, :author, :publisher, :lend, :created_at, :updated_at
json.url book_url(book, format: :json)
