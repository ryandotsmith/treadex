class User < ActiveRecord::Base
  has_one :messenger
  include Clearance::User
end
