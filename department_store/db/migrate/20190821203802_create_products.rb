class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :price
      t.string :brand
      t.belongs_to :department, null: false, foreign_key: true

      t.timestamps
    end
  end
end
