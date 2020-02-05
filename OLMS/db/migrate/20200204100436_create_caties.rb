class CreateCaties < ActiveRecord::Migration[6.0]
  def change
    create_table :caties do |t|
      t.integer :user_id
      t.integer :user_cid

      t.timestamps
    end
  end
end
