class User < ApplicationRecord
    validates :email, uniqueness: true
    validates_format_of :email, with: /@/
    validates :password_digest, presence: true
    has_secure_password #find out more about what this specific validation does
end
