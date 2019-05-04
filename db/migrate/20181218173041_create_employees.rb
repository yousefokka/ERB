class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :FName
      t.string :LName
      t.string :Email
      t.string :password
      t.integer :age
      t.string :address
      t.string :phone
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
