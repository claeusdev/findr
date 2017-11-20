class Place < ApplicationRecord

	geocoded_by :address

	after_validation :geocode

	
	def address
		 [city, region].join(",")
	end
end
