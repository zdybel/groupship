class Boat < ApplicationRecord

	belongs_to :user
	has_and_belongs_to_many :jobs

	has_attached_file :avatar
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

end
