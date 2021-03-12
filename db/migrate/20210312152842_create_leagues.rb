class CreateLeagues < ActiveRecord::Migration[6.1]
  def change
    create_table :leagues do |t|
      t.integer :league_id
      t.string :league_name
      t.integer :club_id

      t.timestamps
    end
  end
end
