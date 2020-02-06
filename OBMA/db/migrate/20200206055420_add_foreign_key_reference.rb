class AddForeignKeyReference < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :users, index: true, foreign_key: true
    add_reference :reviews, :books, index: true, foreign_key: true
    add_foreign_key :purchases, :users
  end
end
