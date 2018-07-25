class Fromes < ActiveRecord::Migration[5.1]
  def change
    create_table :formes
    add_column :formes, :forme_p, :string

  end
end
