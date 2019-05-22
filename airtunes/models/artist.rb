class Artist < ApplicationRecord
  has_many :albums, dependent: :destroy

  validates :name, :image_url, presence: true, uniqueness: true
end
