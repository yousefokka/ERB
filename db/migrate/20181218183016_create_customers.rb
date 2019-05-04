class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :Fname
      t.string :Sname
      t.string :Email
      t.string :password
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
