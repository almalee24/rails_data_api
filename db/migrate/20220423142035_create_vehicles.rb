class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles, id: false do |t|
      t.string :make
      t.string :price
      t.string :photo
      t.string :model
      t.string :id 
      t.text :colors, array: true, default: []

      t.timestamps
    end
  end
end
