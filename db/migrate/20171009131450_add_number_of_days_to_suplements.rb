class AddNumberOfDaysToSuplements < ActiveRecord::Migration[5.1]
  def change
    add_column :suplements, :number_of_days, :integer
  end
end
