class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.float :average, :default => 0
      t.text :description
      t.string :name
      t.date :release_date
      t.references :review
      t.integer :rating_sum, :default => 0
      t.integer :total_reviews, :default => 0
      
      t.timestamps
    end

    add_index :products, :review_id
  end
end
