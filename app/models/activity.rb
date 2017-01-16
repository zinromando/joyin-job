class Activity < ApplicationRecord
  validates :subject, presence: true
  validates :description, presence: true
  validates :field, presence: true
  validates :fee, presence: true
  validates :location, presence: true
  validates :contact_email, presence: true
end
