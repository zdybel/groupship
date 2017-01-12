class Boat < ApplicationRecord
	belongs_to :user
	has_and_belongs_to_many :jobs

	validates :name, presence: true, uniqueness: true
	validates :location, presence: true
	validates :container_max, presence: true

end
