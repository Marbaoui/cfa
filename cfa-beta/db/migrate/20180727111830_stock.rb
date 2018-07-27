class Stock < ActiveRecord::Migration[5.1]
  def change
    create_table :stock
    add_column :stock, :name_p, :string
    add_column :stock, :provider_name_p, :integer
    add_column :stock, :aisle_p, :string
    add_column :stock, :stock_coverage, :string
    add_column :stock, :quantity_p, :integer
    add_column :stock, :created_at_s, :datetime
    add_column :stock, :updated_at_s, :datetime

  end
end
