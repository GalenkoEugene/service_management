class RenameBrandFromDevices < ActiveRecord::Migration[5.0]
	
	remove_column :devices, :brand
	add_column :devices, :brand_id, :integer
end
