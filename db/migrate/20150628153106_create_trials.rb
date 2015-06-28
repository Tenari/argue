class CreateTrials < ActiveRecord::Migration
  def change
    create_table :trials do |t|
      t.string :title
      t.text :claim
      t.integer :prosecutor_id
      t.integer :defender_id
      t.date :ended_at

      t.timestamps null: false
    end
  end
end
