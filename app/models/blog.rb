class Blog < ApplicationRecord

  validates :tripName,
            presence:true,
            uniqueness:true
  validates :starDate
  validates :endDate
  validates :overallPrice,
            presence:true,
            numericality: {only_integer: true}
  validates :numberAdults,
            numericality:{only_integer: true}
  validates :numberChildren,
            numericality: {only_integer: true}
  validates :overallDetails,
            presence:true
  validates :origin
  validates :destination

  #flights
  validates :flightPrice,
            numericality: {only_integer: true}
  validates :flightDetails

  #cruise
  validates :cruisePrice,
            numericality: {only_integer: true}
  validates :cruiseDetails

  #hotel
  validates :hotelPrice,
            numericality: {only_integer: true}
  validates :hotelBeds,
            numericality: {only_integer: true}
  validates :hotelDetails

  #special things
  validates :specialName
  validates :specialPrice,
            numericality: {only_integer: true}
  validates :specialDetails
  validates :postFacebook

end
