class Listbook
  include Mongoid::Document

  belongs_to :book
  belongs_to :list
end
