class Comment < ApplicationRecord
  validates :user_id, presence: true
  validates :topic_id, presence: true
  validates :body, presence: true
  
  belongs_to :topic
  belongs_to :user
  
end
