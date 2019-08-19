class DeletePhoneForActivity < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :phone
  end
end
