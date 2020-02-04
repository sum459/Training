class AddContactToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :contact, :text
  end
end
