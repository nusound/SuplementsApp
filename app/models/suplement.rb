class Suplement < ApplicationRecord
  belongs_to :user

  validates :name,
            :number_of_units,
            :daily_dosage_in_units,
            :number_of_days,
            :suplement_cost,
            presence: true

  def total_cost
    number_of_days * daily_dosage_in_units * (suplement_cost / number_of_units)
  end
end
