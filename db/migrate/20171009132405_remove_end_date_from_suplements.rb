class RemoveEndDateFromSuplements < ActiveRecord::Migration[5.1]
  def change
    remove_column :suplements, :end_date, :date
  end
end
