class CreateClaimers < ActiveRecord::Migration[5.0]
  def change
    create_table :claimers do |t|
      t.string :fio
      t.string :phone
      t.string :email
      t.string :sity
      t.string :adress

      t.timestamps
    end
  end
end
