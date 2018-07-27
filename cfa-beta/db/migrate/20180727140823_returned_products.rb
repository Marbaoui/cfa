class ReturnedProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :returned_products
    add_column :returned_products, :name_p, :string
    add_column :returned_products, :return_date_p, :datetime
    add_column :returned_products, :quantity_p, :integer
  end
end
