class CreateFactors < ActiveRecord::Migration[5.2]
  def change
    create_table :factors do |t|
      t.string :name
      t.string :location
      t.string :product
      t.integer :price
      t.integer :quantity
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
