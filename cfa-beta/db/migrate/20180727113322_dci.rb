class Dci < ActiveRecord::Migration[5.1]
  def change
    create_table :DCI
    add_column :DCI, :dci_p, :string
    add_column :DCI, :dci_full_name, :string
  end
end
