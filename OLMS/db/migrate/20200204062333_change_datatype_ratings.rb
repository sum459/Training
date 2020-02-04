class ChangeDatatypeRatings < ActiveRecord::Migration[6.0]
  def up

    change_column :reviews, :ratings, :string 

  end

  def down

    change_column :reviews, :ratings, :integer

  end

end
