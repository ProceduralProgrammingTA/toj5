class Task < ApplicationRecord
  has_many :reviews
  has_many :submissions
end
