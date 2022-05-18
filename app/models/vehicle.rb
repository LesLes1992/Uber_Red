class Vehicle < ApplicationRecord
  #resourcify
  
  belongs_to :user #drivers
  has_one :order

  has_one_attached :vehicle_image
end
