class Customer < ActiveRecord::Base
  has_many :missions
  has_many :messengers, :through => :missions
end
