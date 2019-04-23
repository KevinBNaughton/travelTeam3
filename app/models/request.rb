class Request < ApplicationRecord

  validates :startDate,
            presence:true

  validates :endDate,
            presence:true

end
