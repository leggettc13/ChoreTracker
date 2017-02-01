class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.int :parent_id, null: false, default: 0
      t.string :name, null: false, default: ""
      t.boolean :frozen?, null: false, default: false #is the child grounded?
      t.int :balance, null: false, default: 0

      t.timestamps null: false
      
      add_index :parent_id
    end
  end
end
