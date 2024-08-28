class ChangeComments < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :comments, :products
  end
end
