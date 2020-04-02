class AddColumnTotalViewsInVideos < ActiveRecord::Migration[6.0]
  def change
  	add_column :videos, :viewing, :float, default: 0
  end
end
