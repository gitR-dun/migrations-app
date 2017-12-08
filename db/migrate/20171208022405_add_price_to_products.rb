class AddPriceToProducts < ActiveRecord::Migration[5.1]
  def change
    # change :table, :column, :data_type
    add_column :products, :price, :integer
  end
end
