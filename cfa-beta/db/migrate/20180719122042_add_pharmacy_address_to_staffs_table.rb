class AddPharmacyAddressToStaffsTable < ActiveRecord::Migration[5.1]
  def change
    add_column :staffs, :city_p, :string
    add_column :staffs, :address_p, :string
    add_column :staffs, :postal_code_p, :string
  end
end
