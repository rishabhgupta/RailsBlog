class UserDetail < ActiveRecord::Base
	# Realationships
	has_one :user
	# Validations
	validates :first_name, presence: true, length: { within: 5..15 }
	validates :last_name, presence: true, length: { within: 5..20 }  
	validates :username, presence: true, length: { within: 5..15 }
	validates_uniqueness_of :username
	validates :age, presence: true, numericality: { only_integer: true }, :inclusion => {:in => 10..100}
end
