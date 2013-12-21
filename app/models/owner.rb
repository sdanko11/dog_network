class Owner < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email

  has_one :house
  has_many :dogs, through: :house
end
