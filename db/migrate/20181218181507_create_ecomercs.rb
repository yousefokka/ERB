class CreateEcomercs < ActiveRecord::Migration[5.2]
  def change
    create_table :ecomercs do |t|
      t.string :name
      t.string :location
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
