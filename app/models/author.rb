class Author
  include Mongoid::Document

  embeds_many :book

  field :first_name, type: String
  field :last_name, type: String
  field :gender, type: String
  field :country, type: String
end
