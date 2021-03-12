class League < ApplicationRecord
  has_many :clubs
  has_many :matches
  validates :league_name, presence: true, uniqueness: true
end
