class CreateAddPrimaryKeys < ActiveRecord::Migration[6.0]
  def change
    create_table :add_primary_keys do |t|
        add_column :purchase_books, :id, :primary_key
      t.timestamps
    end
  end
end
