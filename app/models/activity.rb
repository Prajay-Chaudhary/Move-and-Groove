class Activity < ApplicationRecord
  belongs_to :user
  validates :activity_name, presence: true, length: {minimum: 5, maximum: 100}
  validates :activity_date, presence: true
  validates :duration, presence: true
end
