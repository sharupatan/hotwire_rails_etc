class MakeCommentCommentable < ActiveRecord::Migration[7.1]
  def change
    add_column :comments, :commentable_id, :integer
    add_column :comments, :commentable_type, :string
    add_index :comments, [:commentable_type, :commentable_id]

    remove_column :comments, :product_id
    remove_column :comments, :shop_id
  end
end
