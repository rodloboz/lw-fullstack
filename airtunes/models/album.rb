class Album < ApplicationRecord
  belongs_to :artist

  validates :title, presence: true
  validates :image_url, presence: true, uniqueness: true
end
