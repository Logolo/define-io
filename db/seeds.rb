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

# Test product
Product.create(:description => "Product description", :name => "Test product", :release_date => Time.now())

# Test review
Review.create(:content => "Test review content", :posted_on => Time.now(), :product_id => Product.find(1), :rating => 9, :user_id => 1)
Review.create(:content => "Test review content", :posted_on => Time.now(), :product_id => Product.find(1), :rating => 2, :user_id => 1)
Review.create(:content => "Test review content", :posted_on => Time.now(), :product_id => Product.find(1), :rating => 3, :user_id => 1)
Review.create(:content => "Test review content", :posted_on => Time.now(), :product_id => Product.find(1), :rating => 5, :user_id => 1)
Review.create(:content => "Test review content", :posted_on => Time.now(), :product_id => Product.find(1), :rating => 9, :user_id => 1)
Review.create(:content => "Test review content", :posted_on => Time.now(), :product_id => Product.find(1), :rating => 9, :user_id => 1)
Review.create(:content => "Test review content", :posted_on => Time.now(), :product_id => Product.find(1), :rating => 9, :user_id => 1)
Review.create(:content => "Test review content", :posted_on => Time.now(), :product_id => Product.find(1), :rating => 9, :user_id => 1)
Review.create(:content => "Test review content", :posted_on => Time.now(), :product_id => Product.find(1), :rating => 9, :user_id => 1)
Review.create(:content => "Test review content", :posted_on => Time.now(), :product_id => Product.find(1), :rating => 1, :user_id => 1)
Review.create(:content => "Test review content", :posted_on => Time.now(), :product_id => Product.find(1), :rating => 1, :user_id => 1)
Review.create(:content => "Test review content", :posted_on => Time.now(), :product_id => Product.find(1), :rating => 1, :user_id => 1)
Review.create(:content => "Test review content", :posted_on => Time.now(), :product_id => Product.find(1), :rating => 1, :user_id => 1)
Review.create(:content => "Test review content", :posted_on => Time.now(), :product_id => Product.find(1), :rating => 1, :user_id => 1)
Review.create(:content => "Test review content", :posted_on => Time.now(), :product_id => Product.find(1), :rating => 1, :user_id => 1)
Review.create(:content => "Test review content", :posted_on => Time.now(), :product_id => Product.find(1), :rating => 1, :user_id => 1)
Review.create(:content => "Test review content", :posted_on => Time.now(), :product_id => Product.find(1), :rating => 1, :user_id => 1)