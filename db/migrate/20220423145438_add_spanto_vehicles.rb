class AddSpantoVehicles < ActiveRecord::Migration[6.0]
  def change
    add_reference :vehicles, :span, foreign_key: true
  end
end
