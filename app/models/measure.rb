class Measure < ApplicationRecord
  belongs_to :patient
  belongs_to :sensor

  validates :value, :patient, :sensor, presence: true

  def decrypted_value
    # The value should be in base 64
    # If value is plain encrypted append { format: :plain }
    AES.decrypt(self[:value], ENV["SECRET_KEY"])
  end
end
