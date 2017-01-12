class Boat < ApplicationRecord
	belongs_to :user
	has_and_belongs_to_many :jobs


	has_attached_file :avatar
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

	validates :name, presence: true, uniqueness: true
	validates :location, presence: true
	validates :container_max, presence: true

end
