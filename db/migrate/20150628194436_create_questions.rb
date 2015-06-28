class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :parent_id
      t.string :parent_type
      t.text :query

      t.timestamps null: false
    end
  end
end
