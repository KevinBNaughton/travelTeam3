class Blog < ApplicationRecord

  validates :name, presence:true, uniqueness:true
  validates :starDate
  validates :endDate
  validates :overallPrice, presence:true, numericality: {only_integer: true}
  validates :numberAdults, numericality: {only_integer: true}
  validates :numberChildren, numericality: {only_integer: true}
  validates :overallDetails, presence:true
  validates :flightPrice, numericality: {only_integer: true}
  validates :flightDetails
  validates :cruisePrice, numericality: {only_integer: true}
  validates :cruiseDetails
  validates :hotelPrice, numericality: {only_integer: true}
  validates :hotelBeds, numericality: {only_integer: true}
  validates :hotelDetails
  validates :specialName
  validates :specialPrice, numericality: {only_integer: true}
  validates :specialDetails
  validates :postFacebook

end
