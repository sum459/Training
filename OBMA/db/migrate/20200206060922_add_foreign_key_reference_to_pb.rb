class AddForeignKeyReferenceToPb < ActiveRecord::Migration[6.0]
  def change
    add_reference :purchase_books, :purchases, index: true, foreign_key: true
    add_reference :purchase_books, :books, index: true, foreign_key: true
  end
end
