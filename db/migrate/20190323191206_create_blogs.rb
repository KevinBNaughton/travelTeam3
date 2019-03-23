class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :name
      t.date :startDate
      t.date :endDate
      t.integer :overallPrice
      t.integer :numberAdults
      t.integer :numberChildren
      t.string :overallDetails
      t.integer :flightPrice
      t.string :flightDetails
      t.integer :cruisePrice
      t.string :cruiseDetails
      t.integer :hotelPrice
      t.integer :hotelBeds
      t.string :hotelDetails
      t.string :specialName
      t.integer :specialPrice
      t.string :specialDetails


      t.timestamps
    end
  end
end
