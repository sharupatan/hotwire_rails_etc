class CreateAcommentAproductAshop < ActiveRecord::Migration[7.1]
  def change
    create_table :acomments do |t|
      t.string :content
      t.references :commentable, polymorphic: true, index: true
      t.timestamps
    end

    create_table :aproducts, id: :string do |t|
      t.string :name
      t.integer :price
      t.references :ashop
      t.timestamps
    end

    create_table :ashops, id: :integer do |t|
      t.string :name
      t.string :address
      t.timestamps
    end
  end
end
