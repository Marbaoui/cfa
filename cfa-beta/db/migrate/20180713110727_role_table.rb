class RoleTable < ActiveRecord::Migration[5.1]
  def change
    create_table :roles
    add_column :roles, :role_name, :string
    add_column :roles, :number_R, :integer
    
  end
end
