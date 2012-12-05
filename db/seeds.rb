# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Root user
User.create(:admin => true, :name => "root", :email => "root@define.io", 
			:password => "rootpass", :password_confirmation => "rootpass")

# Test products
#Product.create(:description => "Product description", :name => "Test Product", :release_date => Time.now())
#Product.create(:description => "Product description 2", :name => "Test Product 2", :release_date => Time.now())
#Product.create(:description => "Product description 3", :name => "Test Product 3", :release_date => Time.now())

# Test review
#Review.create(:content => "Test review content", :product_id => Product.find(1), :rating => 9, :title => "Test review", :user_id => 1)
#Review.create(:content => "Test review content", :product_id => Product.find(2), :rating => 2, :title => "Test review", :user_id => 1)
#Review.create(:content => "Test review content", :product_id => Product.find(3), :rating => 3, :title => "Test review", :user_id => 1)