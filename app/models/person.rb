class Person < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,:fullname,:username,:phonenumber,:notify

  has_many :deals
  has_many :transactions
  validates :email, :presence => true
  validates :password, :presence => true
  validates :username, :presence => true
  validates :fullname, :presence => true
  validates :phonenumber, :presence => true
  validates_uniqueness_of :email
  validates_uniqueness_of :username
end

