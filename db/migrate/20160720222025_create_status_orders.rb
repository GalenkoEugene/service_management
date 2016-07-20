class CreateStatusOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :status_orders do |t|
      t.string :description

      t.timestamps
    end
  end
end
