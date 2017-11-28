class Post < ApplicationRecord
  validates :title, presence: true
  mount_uploader :picture, PictureUploader

  belongs_to :user
end
