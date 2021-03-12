class AddLeagueRefToClubs < ActiveRecord::Migration[6.1]
  def change
    add_reference :clubs, :league, null: false, foreign_key: true
  end
end
