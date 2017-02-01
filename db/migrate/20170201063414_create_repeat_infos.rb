class CreateRepeatInfos < ActiveRecord::Migration
  def change
    create_table :repeat_infos do |t|
       t.int :repeat_type # 0 for daily, 1 for weekly, 2 for monthly, enum value in model
       t.int :repeat_data # for daily: useless, for weekly: 1-7 for day of the week, for monthly: 1-31 for day of the month
       t.int :chore_id # foreign key to match with a chore entry

      t.timestamps null: false
    end
    add_index :chore_id
  end
end
