class Author
  include Mongoid::Document
  field :name, type: String
  field :gender, type: String
  field :country, type: String
end
