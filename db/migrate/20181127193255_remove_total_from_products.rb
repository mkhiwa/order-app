class RemoveTotalFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :total, :decimal
  end
end
