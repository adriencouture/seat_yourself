class User < ActiveRecord::Base
  has_secure_password
  validates :name, presence: true, length: { minimum: 3 }
  validates :email, presence: true , uniqueness: true

  user = User.new
  user.valid? # => false
  user.errors.messages


  has_many :reservations
  has_many :restaurants, through: :reservations
  has_many :reviews
  has_many :restaurants, through: :reviews
end
