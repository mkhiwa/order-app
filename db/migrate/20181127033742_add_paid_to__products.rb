class AddPaidToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :paid, :decimal, precision: 10, scale: 2, default: 0, null: false
  end
end
