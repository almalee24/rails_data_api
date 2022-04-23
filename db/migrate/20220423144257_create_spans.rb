class CreateSpans < ActiveRecord::Migration[6.0]
  def change
    create_table :spans do |t|
      t.string :unit
      t.string :distance

      t.timestamps
    end
  end
end
