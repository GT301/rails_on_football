class Match < ApplicationRecord
  belongs_to :league
  has_many :clubs
  validates :round, :date, :team1, :team2, presence: true
end
