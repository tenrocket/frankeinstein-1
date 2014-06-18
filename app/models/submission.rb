class Submission < ActiveRecord::Base

	belongs_to :user
	belongs_to :challenge
	has_many :comments, as: :commentable
	has_many :points

	mount_uploader :image, SubmissionImageUploader

	validates_uniqueness_of :challenge_id, scope: :user_id
	validates_uniqueness_of :winner, scope: :user_id

end