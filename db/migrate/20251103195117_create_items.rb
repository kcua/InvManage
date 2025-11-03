class CreateItems < ActiveRecord::Migration[8.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :sku
      t.integer :quantity
      t.decimal :price, precision: 10, scale: 2
      t.text :description
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
