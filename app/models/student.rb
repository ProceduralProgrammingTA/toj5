class Student < ApplicationRecord
  has_secure_password
  validates :password, presence: true, length: { minimum: 8 }
  has_many :reviews
  has_many :submissions
end
