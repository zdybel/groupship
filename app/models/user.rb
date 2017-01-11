class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  has_many :jobs
  has_many :boats

  has_attached_file :avatar,
  :storage => :s3,
  :s3_region => "us-east-2",
  :s3_credentials => {
    :bucket => "shipping-app-paul",
    :access_key_id => "AKIAJ2RNJVTCB2MNJVCA",
    :secret_access_key => "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",
  }

  validates_attachment_content_type :avatar,
  :content_type => /\Aimage\/.*\Z/
end
