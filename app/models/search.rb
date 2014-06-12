class Search < ActiveRecord::Base

	belongs_to :searchable, polymorphic: true

	def search_items
  	@item ||= find_items
	end

	private

	def find_items
		challenges = Challenge.order(:name)
		challenges = challenges.where("name like ?", "%#{keywords}%") if keywords.present?
	  # challenges = challenges.where(interest_id: interest_id) if interest_id.present?
	  challenges = challenges.where("date >= ?", start_date) if start_date.present?
	  challenges = challenges.where("date <= ?", end_date) if end_date.present?
	  
	  users = User.order(:name)
	  users = users.where("name like ?", "%#{keywords}%") if keywords.present?
	end

end
