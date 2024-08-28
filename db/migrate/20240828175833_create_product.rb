class CreateProduct < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.timestamps
    end

    create_table :shops do |t|
      t.string :name
      t.string :address
      t.timestamps
    end

    create_table :comments do |t|
      t.string :content
      t.references :product
      t.references :shop
      t.timestamps
    end
  end
end
