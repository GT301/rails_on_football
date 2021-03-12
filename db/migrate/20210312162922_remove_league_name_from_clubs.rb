class RemoveLeagueNameFromClubs < ActiveRecord::Migration[6.1]
  def change
    remove_column :clubs, :league_name, :string
  end
end
