class User < ActiveRecord::Base

	has_many :comments, as: :commentable
	has_many :searches, as: :searchable
	has_many :user_challenges
	has_many :submissions
	has_many :points
	
	has_and_belongs_to_many :interests
	has_many :challenges, through: :user_challenges
	has_many :created_challenges, class_name: "Challenge", foreign_key: :challenger_id

	mount_uploader :image, UserImageUploader
	mount_uploader :portfolio_item, PortfolioItemUploader

	# has_secure_password

	# validates_presence_of :email
	# validates_uniqueness_of :email


	def self.from_omniauth(auth)
		where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
			user.provider = auth.provider
			user.uid = auth.uid
			user.name = auth.info.name
			user.email = auth.info.email
			user.oauth_token = auth.credentials.token
			user.oauth_expires_at = Time.at(auth.credentials.expires_at)
			user.save!
		end
	end
	
end