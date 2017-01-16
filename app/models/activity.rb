class Activity < ApplicationRecord
  validates :subject, presence: true
  validates :description, presence: true
  validates :field, presence: true
  validates :fee, presence: true
  validates :location, presence: true
  validates :contact_email, presence: true

  def publish!
    self.is_hidden = false
    save
  end

  def hide!
    self.is_hidden = true
    save
  end
end
