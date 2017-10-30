class ChangeIntegerToDecimal < ActiveRecord::Migration[5.1]
  def change
    change_column :suplements, :total_cost, :decimal
  end
end
