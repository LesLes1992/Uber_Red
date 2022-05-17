class User < ApplicationRecord
  resourcify
  rolify
  after_create :assign_default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :vehicles #watch matt model videos

  def assign_default_role
    self.add_role(:traveler) if self.roles.blank?
  end

end
  
