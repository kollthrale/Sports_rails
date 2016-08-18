class CreateSports < ActiveRecord::Migration[5.0]
  def change
    create_table :sports do |t|
      t.string :type_of_sport, null: false
      t.string :team_name, null: false
      t.integer :number_of_players
      t.boolean :good_bad,     default: false
      t.integer :wins
      t.string :color
      t.string :nation

      t.timestamps
    end
  end
end
