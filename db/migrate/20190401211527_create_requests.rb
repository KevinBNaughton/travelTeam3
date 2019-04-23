class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|

#basic info. Every post needs these
    t.string :userName
    t.string :email
    t.date :startDate
    t.date :endDate
    t.integer :overallPrice
    t.integer :numberAdults
    t.integer :numberChildren
    t.string :overallDetails
    t.string :origin
    t.string :destination

    t.string :notes     #for admin to make on her page, not for person to request with

    t.timestamps
    end
  end
end
