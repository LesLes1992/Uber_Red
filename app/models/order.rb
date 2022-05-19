class Order < ApplicationRecord
  belongs_to :user
  belongs_to :vehicle


  validates :address, presence: true
end
