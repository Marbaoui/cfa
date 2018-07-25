class AddFormeFullnameToFromes < ActiveRecord::Migration[5.1]
  def change
    add_column :formes, :forme_full_name, :string
  end
end
