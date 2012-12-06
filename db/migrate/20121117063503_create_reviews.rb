class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :old_rating, :default => 0
      t.integer :rating
      t.integer :votes, :default => 0
      t.references :product
      t.references :user
      t.string :title
      t.string :written_by
      t.text :content

      t.timestamps
    end
    add_index :reviews, :product_id
    add_index :reviews, :user_id
  end
end
