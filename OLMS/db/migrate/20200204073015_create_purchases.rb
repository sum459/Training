class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.string :username
      t.date :date
      t.timestamps
    end
  end
end
