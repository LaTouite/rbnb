class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :activity, foreign_key: true
      t.datetime :date_time
      t.integer :total_price
      t.integer :number_of_participants

      t.timestamps
    end
  end
end
