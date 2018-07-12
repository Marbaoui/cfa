class Staffs < ActiveRecord::Migration[5.1]
  def change
    create_table :staffs
    add_column :staffs, :first_name, :string
    add_column :staffs, :last_name, :string
    add_column :staffs, :address, :string
    add_column :staffs, :city, :string
    add_column :staffs, :postal_code, :integer
    add_column :staffs, :gsm, :integer
    add_column :staffs, :tel, :integer
    add_column :staffs, :email, :string
    add_column :staffs, :birthday, :date
    add_column :staffs, :created_at, :datetime
    add_column :staffs, :updated_at, :datetime
    add_column :staffs, :id_campany, :string
  end
end
