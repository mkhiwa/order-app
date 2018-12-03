class RemovePaidFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :paid, :decimal
  end
end
