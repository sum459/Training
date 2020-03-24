class CreateLineItems < ActiveRecord::Migration[6.0]
  def change
    create_table :line_items do |t|
      t.integer :quantity, default: 1
      t.references :instrument, null: false, foreign_key: true
      t.belongs_to :cart, foreign_key: true
      t.timestamps
    end
  end
end
