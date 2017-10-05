class CreateSuplements < ActiveRecord::Migration[5.1]
  def change
    create_table :suplements do |t|
      t.string :name
      t.integer :number_of_units
      t.integer :daily_dosage_in_units
      t.date :start_date
      t.date :end_date
      t.float :suplement_cost
      t.float :total_cost

      t.timestamps
    end
  end
end
