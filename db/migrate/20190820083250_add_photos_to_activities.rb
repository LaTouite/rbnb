class AddPhotosToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :main_photo, :string
    add_column :activities, :second_photo, :string
  end
end
