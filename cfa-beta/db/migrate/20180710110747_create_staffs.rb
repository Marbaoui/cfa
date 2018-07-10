class CreateStaffs < ActiveRecord::Migration[5.1]
  def change
    create_table :staffs do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.integer :postal_code
      t.string :city
      t.integer :gsm
      t.integer :tel
      t.string :email
      t.string :role
      t.date :registered_on

      t.timestamps
    end
  end
end
