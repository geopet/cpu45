class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :time_zone
  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :time_zone, :user, :login, :first_name, :last_name, as: :admin
  validates :login, :presence => true, :uniqueness => true
  validates :email, :time_zone, :first_name, :last_name, :presence => true
end
