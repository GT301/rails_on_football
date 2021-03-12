class RemoveLeagueNameFromMatch < ActiveRecord::Migration[6.1]
  def change
    remove_column :matches, :league_name, :string
  end
end
