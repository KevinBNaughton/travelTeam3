class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|

#basic info. Every post needs these
    t.date :startDate
    t.date :endDate
    t.integer :overallPrice
    t.integer :numberAdults
    t.integer :numberChildren
    t.string :overallDetails
    t.string :origin
    t.string :destination

      t.timestamps
    end
  end
end
