class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.integer :votes
      t.references :product
      t.references :user
      t.string :title
      t.text :content

      t.timestamps
    end
    add_index :reviews, :product_id
    add_index :reviews, :user_id
  end
end
