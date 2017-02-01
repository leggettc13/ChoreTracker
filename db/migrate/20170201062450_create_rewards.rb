class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.int :cost, null: false, default: 0
      t.boolean :auto_approve?, null: false, default: false #if true, parent does not have to approve reward redemption
      t.int :parent_id, null: false #has to be attached to the parent that created it, so the application can know which child to offer it to.

      t.timestamps null: false
    end
    add_index :parent_id
  end
end
