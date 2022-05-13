class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :plate_number
      t.string :make
      t.string :size
      t.string :location
      t.string :wheelchair_hoist
      t.string :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
