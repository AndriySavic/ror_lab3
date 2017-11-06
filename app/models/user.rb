class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts     
  has_many :postcomments  

		validates :nickname, :password, :email, presence: true
		validates :nickname, length: { in: 6..15 }
		validates :nickname, :email, uniqueness: true
		validates :nickname, format: { with: /\A[a-zA-Z0-9]+\Z/ }
		validates :nickname, format: { without: /\s/ }
  
end