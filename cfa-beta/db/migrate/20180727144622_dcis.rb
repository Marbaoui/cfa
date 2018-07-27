class Dcis < ActiveRecord::Migration[5.1]
  def change
    create_table :dcis
    add_column :dcis, :dci_p, :string
    add_column :dcis, :dci_full_name, :string
  end
end
