class Place < ApplicationRecord
	searchkick

	geocoded_by :address
	after_validation :geocode

	has_many :reviews, dependent: :destroy

	belongs_to :category

	
	def address
		 [street_name, city, region].join(",")
	end


end
