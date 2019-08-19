class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :description
      t.integer :unit_price
      t.string :category
      t.string :schedule
      t.integer :min_number_of_participants
      t.integer :max_number_of_participants
      t.integer :min_age
      t.integer :duration
      t.integer :max_sessions

      t.timestamps
    end
  end
end
