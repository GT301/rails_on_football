class Club < ApplicationRecord
  belongs_to :league
  has_many :matches
  validates :club_name, :country, presence: true
  validates :club_name, uniqueness: true

  paginates_per 15
end
