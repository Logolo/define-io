class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.float :average, :default => 0
      t.text :description
      t.string :name
      t.string :slug
      t.date :release_date
      t.references :review
      t.integer :rating_sum, :default => 0
      t.integer :total_reviews, :default => 0
      
      t.timestamps
    end

    add_index :products, :review_id
    add_index :products, :slug, :unique => true
  end
end
