class Measure < ApplicationRecord
  belongs_to :patient
  belongs_to :sensor

  validates :value, :patient, :sensor, presence: true
end
