class Request < ApplicationRecord

#overall details
  validates :overallPrice,
            presence:true,
            numericality: {only_integer: true}
  validates :numberAdults,
            numericality:{only_integer: true}
  validates :numberChildren,
            numericality: {only_integer: true}
  validates :overallDetails,
            presence:true

end
