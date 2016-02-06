class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant

  validates :review, length: { maximum: 300 }
end
