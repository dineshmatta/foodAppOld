class AddToColumnToItems < ActiveRecord::Migration[5.0]
  def change
  	add_column :items, :to, :datetime
  end
end
