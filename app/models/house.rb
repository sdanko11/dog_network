class House < ActiveRecord::Base
  belongs_to :owner
  belongs_to :dog
  validates_presence_of :name

end

