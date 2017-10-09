class Suplement < ApplicationRecord
  belongs_to :user
  validates :name,
            :number_of_units,
            :daily_dosage_in_units,
            :start_date,
            :end_date,
            :suplement_cost,
            presence: true
end
