class IntroLetter < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  mount_uploader :attachment, AttachmentUploader

  validates :content, presence: true
end
