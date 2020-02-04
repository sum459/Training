class ChangePurchase < ActiveRecord::Migration[6.0]
  def change
    rename_column :purchases, :username, :user_id
    add_column :purchases, :ammount, :integer
  end
end
