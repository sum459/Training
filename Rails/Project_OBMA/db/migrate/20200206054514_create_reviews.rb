class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.numeric :rating

      t.timestamps
    end
  end
end
