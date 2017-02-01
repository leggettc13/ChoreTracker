class CreateChores < ActiveRecord::Migration
  def change
    create_table :chores do |t|
      t.int :child_id 
      t.boolean :repeat?, default: false, null: false
      t.int :coins, default: 0, null: false
      t.string :name, default: "", null: false
      t.text :description

      t.timestamps null: false
    end
    add_index :child_id, :repeat_id
  end
end
