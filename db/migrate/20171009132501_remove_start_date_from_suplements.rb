class RemoveStartDateFromSuplements < ActiveRecord::Migration[5.1]
  def change
    remove_column :suplements, :start_date, :date
  end
end
