class CreateUUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :u_users do |t|
      t.string :name
      t.string :contact
      t.timestamps
    end
  end
end
