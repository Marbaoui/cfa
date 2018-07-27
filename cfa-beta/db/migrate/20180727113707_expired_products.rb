class ExpiredProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :expired_products
    add_column :expired_products, :name_p, :string
    add_column :expired_products, :quantity_p, :integer
    add_column :expired_products, :expired_date_p, :string
    add_column :expired_products, :forme_p, :string



  end
end
