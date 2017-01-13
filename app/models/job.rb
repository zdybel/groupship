class Job < ApplicationRecord

	belongs_to :user
	has_and_belongs_to_many :boats

	validates :description, presence: true, length: { minimum: 50 }
    validates :origin, presence: true
    validates :cost, presence: true, numericality: true
    validates :destination, presence: true
    validates :container_amount, presence: true, numericality: { only_integer: true }
end
