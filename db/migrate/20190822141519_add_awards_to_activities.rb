class AddAwardsToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :award, :boolean
    add_column :activities, :top_player, :boolean
  end
end
