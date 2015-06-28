class CreateEvidences < ActiveRecord::Migration
  def change
    create_table :evidences do |t|
      t.integer :parent_id
      t.string :parent_type
      t.string :link
      t.string :title

      t.timestamps null: false
    end
  end
end
