class Vehicle < ApplicationRecord
  #resourcify
  
  belongs_to :user #drivers
  has_one :order

  has_one_attached :vehicle_image

  validates :plate_number, presence: true, uniqueness: true, length: { in: 1..8 }
  validates :make, presence: true, length: { maximum: 20 }
  validates :vehicle_image, presence: true
end
