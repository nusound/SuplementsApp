class ChangeFloatToDecimal < ActiveRecord::Migration[5.1]
  def change
    change_column :suplements, :suplement_cost, :decimal, :precision => 9, :scale => 2
  end
end
