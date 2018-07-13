class DeleteTableStaffs < ActiveRecord::Migration[5.1]
  def change
    drop_table :Staffs
  end
end
