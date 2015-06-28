class CreateArguments < ActiveRecord::Migration
  def change
    create_table :arguments do |t|
      t.text :body
      t.integer :parent_id
      t.string :parent_type
      t.integer :parent_location

      t.timestamps null: false
    end
    add_index :arguments, :parent_id
  end
end
