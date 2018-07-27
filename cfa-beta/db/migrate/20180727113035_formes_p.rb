class FormesP < ActiveRecord::Migration[5.1]
  def change
    create_table :formes_p
    add_column :formes_p, :forme_p, :string
    add_column :formes_p, :forme_full_name, :string
  end
end
