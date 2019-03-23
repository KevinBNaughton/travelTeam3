class Blog < ApplicationRecord

  validates :name, presence:true
  validates :starDate
  validates :endDate
  validates :overallPrice
  validates :numberAdults
  validates :numberChildren
  validates :overallDetails
  validates :flightPrice
  validates :flightDetails
  validates :cruisePrice
  validates :cruiseDetails
  validates :hotelPrice
  validates :hotelBeds
  validates :hotelDetails
  validates :specialName
  validates :specialPrice
  validates :specialDetails


end
