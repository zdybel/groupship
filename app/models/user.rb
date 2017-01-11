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
    :access_key_id => "AKIAJYUMO2KOLYKC2PVA",
    :secret_access_key => "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",
  }

  validates_attachment_content_type :avatar,
  :content_type => /\Aimage\/.*\Z/
end
