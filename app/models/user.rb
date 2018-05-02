class User < ApplicationRecord
  include Validators

  has_secure_password

  validates_presence_of :name, :email, :password_digest
  validates :email, email: true
  validates_uniqueness_of :email
end
