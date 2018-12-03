class RemoveBalanceFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :balance, :decimal
  end
end
