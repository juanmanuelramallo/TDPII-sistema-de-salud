class Sensor < ApplicationRecord
  has_many :measures

  validates :name, :reads, presence: true
end
