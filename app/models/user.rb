class User < ActiveRecord::Base
  validates :login, :presence => true, :uniqueness => true
  validates :email, :time_zone, :first_name, :last_name, :presence => true

  attr_accessible :time_zone
end
