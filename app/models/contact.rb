class Contact < ApplicationRecord
  include Validators

  validates_presence_of :name, :email
  validates :email, email: true
end
