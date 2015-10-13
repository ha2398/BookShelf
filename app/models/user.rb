class User
  include Mongoid::Document

  has_many :books

  field :first_name, type: String
  field :last_name, type: String
  field :gender, type: String
  field :email, type: String

  validates :first_name, :presence => { :message => "You must provide a first name."}
  validates :last_name, :presence => { :message => "You must provide a last name."}
  validates :email, :presence => { :message => "You must provide an email."}

end
