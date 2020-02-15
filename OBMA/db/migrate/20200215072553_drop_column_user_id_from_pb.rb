class DropColumnUserIdFromPb < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :purchase_books, :users
    remove_column :purchase_books, :user_id
  end
end
