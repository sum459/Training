class AddForeignKeyReferenceToPb < ActiveRecord::Migration[6.0]
  def change
    add_reference :purchase_books, :purchase, index: true, foreign_key: true
    add_reference :purchase_books, :book, index: true, foreign_key: true
  end
end
