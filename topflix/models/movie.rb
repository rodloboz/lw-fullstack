class Movie < ApplicationRecord
  belongs_to :user
  before_create :set_rank

  validates :title, presence: true, uniqueness: true

  private

  def set_rank
    self.rank ||= Movie.maximum(:rank) + 1
  end
end
