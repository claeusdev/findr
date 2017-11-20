class Place < ApplicationRecord

	geocoded_by :address
	after_validation :geocode

	has_many :reviews

	
	def address
		 [city, region].join(",")
	end

end
