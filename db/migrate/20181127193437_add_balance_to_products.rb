class AddBalanceToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :balance, :decimal, default: 0, null: false
    add_column :products, :total, :decimal, default: 0, null: false
  end
end
