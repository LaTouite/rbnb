class RemoveDetailsToActivities < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :zipcode
    remove_column :activities, :city
  end
end
