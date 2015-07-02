class Comment < ActiveRecord::Base
  belongs_to :article
  has_many :responses
  validates :commenter, presence: true,length: { minimum: 5 }  
	validates :body, presence: true
end
