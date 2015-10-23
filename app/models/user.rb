class User < ActiveRecord::Base
	has_many :contacts
	accepts_nested_attributes_for :contacts

	has_secure_password

 	before_save { |user| user.email = email.downcase }
end
