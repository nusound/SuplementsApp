class Suplement < ApplicationRecord
  belongs_to :user
  validates :name,
            :number_of_units,
            :daily_dosage_in_units,
            :number_of_days,
            :suplement_cost,
            presence: true
end
