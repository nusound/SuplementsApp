class AddPrecisionToDecimal < ActiveRecord::Migration[5.1]
  def change
    change_column :suplements, :total_cost, :decimal, :precision => 9, :scale => 2
  end
end
