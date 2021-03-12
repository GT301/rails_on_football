class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.integer :match_id
      t.string :round
      t.date :date
      t.string :team1
      t.string :team2
      t.string :league_name

      t.timestamps
    end
  end
end
