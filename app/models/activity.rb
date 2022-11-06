class Activity < ApplicationRecord
  belongs_to :user
  validates :activity_name, presence: true
  validates :activity_date, presence: true
  validates :duration, presence: true
end
