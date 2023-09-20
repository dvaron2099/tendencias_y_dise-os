class AddWholesalePriceAndQuantityToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :wholesale_price, :integer
    add_column :products, :quantity, :integer
  end
end
