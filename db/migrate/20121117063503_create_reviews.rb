class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      
      t.text :content
      t.datetime :posted_on
      t.string :product
      t.integer :rating
      t.integer :score

      t.timestamps
    end
  end
end
