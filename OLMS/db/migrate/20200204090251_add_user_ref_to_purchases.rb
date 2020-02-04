class AddUserRefToPurchases < ActiveRecord::Migration[6.0]
  def change
    remove_column :purchases, :user_id, :string
    

  end
end
