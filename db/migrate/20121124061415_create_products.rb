class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :description
      t.string :name
      t.date :release_date
      t.integer :reviews
      t.float :score
      
      t.timestamps
    end
  end
end
