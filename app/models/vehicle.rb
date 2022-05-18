class Vehicle < ApplicationRecord
  #resourcify
  
  belongs_to :user #drivers
  has_one :order

  has_one_attached :vehicle_image

  validates :plate_number, presence: true, uniqueness: true
  validates :make, presence: true
  validates :vehicle_image, presence: true
end
