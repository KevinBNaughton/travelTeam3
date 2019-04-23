class User < ApplicationRecord

  before_save { self.email = email.downcase }

  validates :name,
            presence: true,
            length: { maximum: 50 }

  # validate  :check_admin?

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }

  has_secure_password

  validates :password,
            presence:true,
            length: { minimum: 5 }

  # private
  # def check_admin?
  #   if User.where(name: "admin").all
  #     if :name == "admin"
  #       errors.add(:name, "Cannot have \"admin\" as your name.")
  #       false
  #     end
  #   end
  # end

end
