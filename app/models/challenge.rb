class Challenge < ActiveRecord::Base

	has_many :comments, as: :commentable
	has_many :searches, as: :searchable
	has_many :user_challenges
	has_many :submissions
	has_many :points
	
	has_and_belongs_to_many :interests
	has_many :users, through: :user_challenges

	mount_uploader :challenge_image, ChallengeImageUploader
	
end