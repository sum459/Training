class CreatePurchaseBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :purchase_books do |t|
  
      t.timestamps
    end
  end
end
