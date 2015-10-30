class List
  include Mongoid::Document
  
  belongs_to :user
  has_many :listbook
  
  field :title, type: String
  field :description, type: String
end  
