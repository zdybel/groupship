class Boat < ApplicationRecord

	belongs_to :user
	has_and_belongs_to_many :jobs

	has_attached_file :avatar,
	:storage => :s3,
	:s3_region => "us-east-1",
	:s3_credentials => {
		# :s3_host_name => "s3.us-east-1.amazonaws.com",
		:bucket => "shipping-app-paul",
		:access_key_id => ENV['IAM_KEY'],
		:secret_access_key => ENV['IAM_SECRET_KEY'],
	}

	validates_attachment_content_type :avatar,
	:content_type => /\Aimage\/.*\Z/

end
