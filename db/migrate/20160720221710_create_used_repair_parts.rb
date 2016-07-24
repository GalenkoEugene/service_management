class CreateUsedRepairParts < ActiveRecord::Migration[5.0]
  def change
    create_table :used_repair_parts do |t|
      t.string :code
      t.integer :qtty
      t.string :description
      t.float :price
      t.integer :stack_id
      t.integer :repair_order_id

      t.timestamps
    end
  end
end
