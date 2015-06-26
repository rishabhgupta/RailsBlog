class Response < ActiveRecord::Base
	belongs_to :comment
	validates :commenter, presence: true,length: { minimum: 5 }  
	validates :body, presence: true
end
