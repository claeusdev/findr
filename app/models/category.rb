class Category < ApplicationRecord
	has_many :places, dependent: :destroy
end
