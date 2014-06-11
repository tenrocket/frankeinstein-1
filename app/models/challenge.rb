class Challenge < ActiveRecord::Base

	belongs_to :user
	has_many :comments, as: :commentable
	has_many :submissions
	has_many :points
	
	has_and_belongs_to_many :interests

	mount_uploader :challenge_image, ChallengeImageUploader
	
end