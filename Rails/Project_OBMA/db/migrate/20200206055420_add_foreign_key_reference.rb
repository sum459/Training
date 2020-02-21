class AddForeignKeyReference < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :user, index: true, foreign_key: true
    add_reference :reviews, :book, index: true, foreign_key: true
    add_foreign_key :purchases, :users
  end
end
