class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :slug
      t.text :content
      t.datetime :posted_on

      t.timestamps
    end
  end
end
