class CreateRepairOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :repair_orders do |t|
      t.integer :tb_climers_id
      t.integer :tb_devices_id
      t.integer :tb_Masters_id
      t.integer :tb_status_order_id
      t.boolean :type_order
      t.datetime :date_create
      t.datetime :date_complite
      t.datetime :date_return
      t.datetime :date_dead_line
      t.string :description
      t.datetime :waranty_period
      t.datetime :date_purchase

      t.timestamps
    end
  end
end
