# email: string
# password_digest: string
#
# password: string virtual
# password_confirmation: string virtual

class User < ApplicationRecord
  has_many :twitter_accounts
  has_secure_password
  validates :password, presence: true
  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be valid email adress"}
end
