class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.date :date
      t.numeric :ammount
      t.timestamps
    end
  end
end
