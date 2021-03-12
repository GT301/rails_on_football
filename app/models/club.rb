class Club < ApplicationRecord
  belongs_to :league
  has_many :matches
  validates :club_name, :code, :country, :league_name, presence: true
  validates :club_name, :code, uniqueness: true
end
