class Interest < ActiveRecord::Base

	has_and_belongs_to_many :users
	has_and_belongs_to_many :challenges

	mount_uploader :interest_image, InterestImageUploader
end