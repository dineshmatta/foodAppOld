class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :quantity
      t.integer :price
      t.string :pincode
      t.datetime :availability
      t.boolean :publish

      t.timestamps
    end
  end
end
