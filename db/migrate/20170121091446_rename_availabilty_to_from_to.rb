class RenameAvailabiltyToFromTo < ActiveRecord::Migration[5.0]
  def change
  	rename_column :items, :availability, :from
  end
end
