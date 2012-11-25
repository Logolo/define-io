class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.datetime :posted_on

      t.timestamps
    end
  end
end
