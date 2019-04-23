class Request < ApplicationRecord

  validates :startDate,presence:true

  validates :endDate,presence:true


  validates :origin,
            presence:true

  validates :destination,
            presence:true

  validates :overallPrice,
            presence:true,
            numericality: { only_integer: true}

  validates :numberAdults,
            presence:true,
            numericality: { only_integer: true }

  validates :numberChildren,
            presence:true,
            numericality: { only_integer: true }

  validates :overallDetails,
            presence:true


  # validate :end_date_must_be_greater_than_enddate
  #
  #           def end_date_must_be_greater_than_enddate
  #             if :startDate > :endDate
  #               errors.add(:endDate,"End Date cann't before start Date")
  #             end
  #           end

end
