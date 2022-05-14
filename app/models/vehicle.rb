class Vehicle < ApplicationRecord
  resourcify
  
  belongs_to :user #drivers
end
