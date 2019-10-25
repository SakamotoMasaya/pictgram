class User < ApplicationRecord
  validates :name, presence:true, length: {maximum: 15}
  validates :email, presence:true, format:{with: /\A[\w.]+@[a-z\d.-]+\.[a-zA-Z0-9-]+\z/} 
  validates :password, length: {in: 8..32}, format:{with: /\A(?=.*?[a-zA-Z])(?=.*?\d)[a-zA-Z\d]+\z/} 
  #文字列の開始位置　a-zA-Zを含むかつ\dを含む a-zA-z\dの中から　文字列の終了位置
  
  has_many :topics
  
  has_many :favorites
  has_many :favorite_topics, through: :favorites, source: 'topic'
  
  has_secure_password
  
end

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  