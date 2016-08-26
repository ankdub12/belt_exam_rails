class User < ActiveRecord::Base
 	has_secure_password

 	has_many :organisations
 	has_many :groups
 	has_many :organisations_groups, through: :groups, source: :organisation


  email_regex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, :presence => true
  validates_length_of :first_name, :last_name, minimum: 2
  validates_length_of :email, minimum: 2
  validates_length_of :password, minimum: 8
  validates :email, :password, :presence => true
  validates :email, :format => { :with => email_regex }, :uniqueness => { :case_sensitive => false }

end
