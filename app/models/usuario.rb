class Usuario < ApplicationRecord
  before_save { self.email = email.downcase}
  validates :nombre, presence: true
  validates :apellido, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :rfc, presence: true, length: { minimum: 12, maximum: 13},
                    uniqueness: { case_sensitive: false}
  validates :empresa, presence: true
  has_secure_password
  validates :password, confirmation: true, length: { minimum: 8 }
end
