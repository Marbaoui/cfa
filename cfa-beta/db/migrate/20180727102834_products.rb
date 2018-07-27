class Products < ActiveRecord::Migration[5.1]
  def change
    create_table :products
    add_column :products, :name_p, :string
    add_column :products, :barcode_p, :integer
    add_column :products, :laboratory_p, :string
    add_column :products, :type_p, :string
    add_column :products, :social_security_reimbursement_rate_p, :integer
    add_column :products, :scale_margin_percent_p, :integer
    add_column :products, :average_margin_percent_p, :integer
    add_column :products, :TVA_percent_p, :integer
    add_column :products, :PPV_p , :integer
    add_column :products, :PPH_p, :string
    add_column :products, :DCI_p, :string
    add_column :products, :expired_date_p, :datetime
    add_column :products, :created_at_p, :datetime
    add_column :products, :updated_at_p, :datetime

  end
end
