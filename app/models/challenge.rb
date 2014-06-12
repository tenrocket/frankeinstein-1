class Challenge < ActiveRecord::Base

	has_many :comments, as: :commentable
	has_many :searches, as: :searchable
	has_many :submissions
	has_many :points
	
	has_and_belongs_to_many :interests
	has_and_belongs_to_many :users

	mount_uploader :challenge_image, ChallengeImageUploader
	
end