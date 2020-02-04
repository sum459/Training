class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :books, :author, :writer
  end
end
