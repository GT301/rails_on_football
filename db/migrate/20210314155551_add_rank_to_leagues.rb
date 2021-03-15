class AddRankToLeagues < ActiveRecord::Migration[6.1]
  def change
    add_column :leagues, :rank, :integer
  end
end
