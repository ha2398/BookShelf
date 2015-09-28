class Author
  include Mongoid::Document

  embedded_in :book

  field :name, type: String
  field :gender, type: String
  field :country, type: String
end
