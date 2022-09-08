class CreateVendorSweets < ActiveRecord::Migration[6.1]
  def change
    create_table :vendor_sweets do |t|
      t.references :vendor, null: false, foreign_key: true
      t.references :sweet, null: false, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
