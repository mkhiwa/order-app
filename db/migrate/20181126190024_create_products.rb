class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :code
      t.string :description
      t.string :status
      t.decimal :price, :precision => 10, :scale => 2
      t.decimal :total, :precision => 10, :scale => 2
      t.decimal :paid, :precision => 10, :scale => 2
      t.decimal :balance, :precision => 10, :scale => 2
      t.integer :user_id
      
      t.timestamps
    end
  end
end
