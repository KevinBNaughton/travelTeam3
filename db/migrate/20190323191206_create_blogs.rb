class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|

#basic info. Every post needs these
      t.string :tripName
      t.date :startDate
      t.date :endDate
      t.integer :overallPrice
      t.integer :numberAdults
      t.integer :numberChildren
      t.string :overallDetails
      t.string :origin
      t.string :destination

#flight info
      t.boolean :flight
      t.integer :flightPrice
      t.string :flightDetails
#cruise info
      t.boolean :cruise
      t.integer :cruisePrice
      t.string :cruiseDetails
#hotel info
      t.boolean :hotel
      t.integer :hotelPrice
      t.integer :hotelBeds
      t.string :hotelDetails
#special deal info
      t.boolean :special
      t.string :specialName
      t.integer :specialPrice
      t.string :specialDetails

      t.boolean :postFacebook
      t.boolean :package

      t.timestamps
    end
  end
end
