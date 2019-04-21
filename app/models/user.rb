class User < ApplicationRecord
  has_secure_password
  before_save { self.email = email.downcase }

  validates :name,
            presence: true

  # validate  :check_admin?

  #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
  #          format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }

  validates :password,
            presence:true

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
