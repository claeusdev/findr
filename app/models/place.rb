class Place < ApplicationRecord
	searchkick
	
	geocoded_by :address
	after_validation :geocode

	has_many :reviews

	belongs_to :category

	
	def address
		 [city, region].join(",")
	end


end
