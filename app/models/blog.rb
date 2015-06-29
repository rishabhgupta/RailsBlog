class Blog < ActiveRecord::Base
	# Relationships 
	belongs_to :user
	# Validation
	validates :name, presence: true, length: { within: 5..15 }
	validates :subtitle, presence: true, length: { within: 10..70 }
	validates :description, presence: true 
end
