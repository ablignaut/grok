class AddPointsToCategory < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :points, :decimal
  end
end
