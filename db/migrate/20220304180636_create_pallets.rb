class CreatePallets < ActiveRecord::Migration[6.0]
  def change
    create_table :pallets do |t|
      t.string :date
      t.integer :scheduled
      t.integer :picked_up
      t.references :user, null: false, foreign_key: true
      t.references :carrier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
