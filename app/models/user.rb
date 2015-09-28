class User
  include Mongoid::Document

  has_many :books

  field :first_name, type: String
  field :last_name, type: String
  field :gender, type: String
  field :email, type: String
end
