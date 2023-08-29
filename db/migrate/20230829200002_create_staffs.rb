class CreateStaffs < ActiveRecord::Migration[7.0]
  def change
    create_table :staffs do |t|
      t.text :name
      t.integer :group_id

      t.timestamps
    end
  end
end
