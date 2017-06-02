class RenameAndAddColumnsFromPostsTable < ActiveRecord::Migration[5.0]
  def change
    rename_column :posts, :post, :description
    add_column :posts, :title, :string
  end
end
