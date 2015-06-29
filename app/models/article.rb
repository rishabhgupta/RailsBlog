class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	belongs_to :blog
	validates :title, presence: true,length: { minimum: 5 }  
	validates :text, presence: true

	# def converter_uppercase
	# 	self.title.touppercase
	# 	save!
	# end
end
