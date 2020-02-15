class RemovePrimaryKey < ActiveRecord::Migration[6.0]
  def change
    remove_column :purchase_books,:id, primary_key: false
  end
end
