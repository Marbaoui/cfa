class AddBirthdayDateToStaffs < ActiveRecord::Migration[5.1]
  def change
     add_column :staffs, :birthday, :date
     remove_column :staffs, :registered_on

  end
end
