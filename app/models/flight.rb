class Flight < ApplicationRecord
  has_many :reservations
  belongs_to :airplane
	# Add scopes to allow index to be filtered via URL params
	scope :origin, -> (origin) { where origin: origin }
  scope :destination, -> (destination) { where destination: destination }
end
