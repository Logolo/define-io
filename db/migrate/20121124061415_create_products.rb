class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.date :released
      t.integer :reviews
      t.float :score
      
      t.timestamps
    end
  end
end
