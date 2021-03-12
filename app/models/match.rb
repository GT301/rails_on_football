class Match < ApplicationRecord
  belongs_to :league
  has_many :clubs
  validates :round, :date, :team1, :team2, :league_name, presence: true
end
