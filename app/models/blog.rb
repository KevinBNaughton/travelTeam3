class Blog < ApplicationRecord

  validates :tripName,
            presence:true
  validates :overallPrice,
            presence:true,
            numericality: {only_integer: true}
  validates :numberAdults,
            numericality:{only_integer: true}
  validates :numberChildren,
            numericality: {only_integer: true}
  validates :overallDetails,
            presence:true

  #flights
  validates :flightPrice,
            numericality: {only_integer: true}

  #cruise
  validates :cruisePrice,
            numericality: {only_integer: true}

  #hotel
  validates :hotelPrice,
            numericality: {only_integer: true}
  validates :hotelBeds,
            numericality: {only_integer: true}

  #special things
  validates :specialPrice,
            numericality: {only_integer: true}

end
