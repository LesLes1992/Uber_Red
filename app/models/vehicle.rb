class Vehicle < ApplicationRecord
  resourcify
  
  belongs_to :user #drivers
  has_one :order
end
