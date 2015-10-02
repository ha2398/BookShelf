class Venue
	include Mongoid::Document

	field :company_name, type: String
	field :sub_industry, type: String
	field :sub_sub_industry, type: String
	field :phone, type: String
	field :website, type: String
	field :location, type: String

end