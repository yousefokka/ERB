class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :pname
      t.integer :price
      t.integer :quantity
      t.references :customer, foreign_key: true
      t.references :ecomerc, foreign_key: true

      t.timestamps
    end
  end
end
