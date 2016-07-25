class CreateDevices < ActiveRecord::Migration[5.0]
  def change
    create_table :devices do |t|
      t.string :model
      t.string :serial_number
      t.string :brand
      t.string :device_type
      t.string :defect
      t.string :accessories
      t.string :appearences

      t.timestamps
    end
  end
end
