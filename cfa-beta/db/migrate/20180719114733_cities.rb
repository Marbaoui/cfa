class Cities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities
    add_column :cities, :city_name, :string
    
  end
end
