class Book
  include Mongoid::Document

  belongs_to :user
  embeds_one :author

  field :title, type: String
  field :pages, type: Integer
  field :isbn, type: String
  field :genre, type: String
end
