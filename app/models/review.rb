class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant

  validates :comment, length: { maximum: 300 }
end
