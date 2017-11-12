class Post < ApplicationRecord
  belongs_to :user
  has_many :postcomments
  
    validates :title, :body, presence: true
  validates :title, length: { in: 1..10 }
  validates :body, length: {in: 5..1000}

end