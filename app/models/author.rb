class Author
  include Mongoid::Document

  belongs_to :books

  field :first_name, type: String
  field :last_name, type: String
  field :gender, type: String
  field :country, type: String

  validates :first_name, :presence => { :message => "You must provide a first name."}
  validates :last_name, :presence => { :message => "You must provide a last name."}

end
