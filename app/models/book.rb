class Book
  include Mongoid::Document
  field :title, type: String
  field :pages, type: Integer
  field :isbn, type: String
  field :genre, type: String
end
