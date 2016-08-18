class CreateFans < ActiveRecord::Migration[5.0]
  def change
    create_table :fans do |t|
      t.string :nation, null:false
      t.boolean :crazy
      t.boolean :loud_or_not, default:true
      t.integer :gold_medals_country_won 
      t.integer :population

      t.timestamps
    end
  end
end
