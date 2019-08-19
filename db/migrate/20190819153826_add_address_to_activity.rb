class AddAddressToActivity < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :address, :string
    add_column :activities, :zipcode, :string
    add_column :activities, :city, :string
  end
end
