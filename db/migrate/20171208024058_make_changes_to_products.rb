class MakeChangesToProducts < ActiveRecord::Migration[5.1]
  def change
    # rename tile to name
    rename_column :products, :title, :name
    # change description type to text
    change_column :products, :description, :text
    # change price to decimal
    change_column :products, :price, "numeric USING CAST(price AS numeric)"
    # remove the isbn column
    remove_column :products, :isbn, :string
  end
end
