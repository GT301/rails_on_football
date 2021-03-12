class CreateClubs < ActiveRecord::Migration[6.1]
  def change
    create_table :clubs do |t|
      t.integer :club_id
      t.string :club_name
      t.string :code
      t.string :country
      t.string :league_name

      t.timestamps
    end
  end
end
