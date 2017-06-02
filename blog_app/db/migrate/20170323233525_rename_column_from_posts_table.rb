class RenameColumnFromPostsTable < ActiveRecord::Migration[5.0]
  def change
    rename_column :posts, :posts, :post
  end
end
