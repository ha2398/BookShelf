class User
  include Mongoid::Document

  has_many :books
  has_many :lists

  field :first_name, type: String
  field :last_name, type: String
  field :gender, type: String
  field :email, type: String

  field :website, type: String
  field :facebook, type: String
  field :github, type: String
  field :twitter, type: String

  def full_name
    [first_name, last_name].join(' ')
  end

  validates :first_name, :presence => { :message => "You must provide a first name."}
  validates :last_name, :presence => { :message => "You must provide a last name."}
  validates :email, :presence => { :message => "You must provide an email."}

end
