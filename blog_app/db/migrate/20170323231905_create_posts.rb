class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :posts

      t.timestamps
    end
    create_table :comments do |t|
      t.string :comment
      t.belongs_to :post, index: true

      t.timestamps
    end
  end
end
