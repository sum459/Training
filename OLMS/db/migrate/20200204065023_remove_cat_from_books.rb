class RemoveCatFromBooks < ActiveRecord::Migration[6.0]
  def change

    remove_column :books, :cat, :string
  end
end
