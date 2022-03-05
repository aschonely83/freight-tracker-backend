class AddRemainingToPallets < ActiveRecord::Migration[6.0]
  def change
    add_column :pallets, :remaining, :integer
  end
end
