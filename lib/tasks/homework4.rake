require 'csv'

namespace :import do

	desc "Imports data from a CSV file and populates the database with the dataset."
	task :venues => :environment do
		puts "Starting to read in CSV file."
		#new_data = CSV.read("venues.csv")

		CSV.foreach('venues.csv', headers:true) do |row|
			venue = Venue.create(:company_name => row['Company Name'],
								 :sub_industry => row['Subindustry'],
								 :sub_sub_industry => row['Sub Subindustry'],
								 :phone => row['Phone'],
								 :website => row['Website'],
								 :location => row['Location'])
		end
		
	end

end