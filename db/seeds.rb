# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Root user
User.create(:name => "root", :email => "root@define.io", 
			:password => "rootpass", :password_confirmation => "rootpass")

# Test products
Product.create(:description => "Surface RT", :name => "Surface RT", :release_date => Time.now())
Product.create(:description => "Surface Pro", :name => "Surface Pro", :release_date => Time.now())
Product.create(:description => "iPad 4", :name => "iPad 4", :release_date => Time.now())
Product.create(:description => "iPad Mini", :name => "iPad Mini", :release_date => Time.now())
Product.create(:description => "Nexus 4", :name => "Nexus 4", :release_date => Time.now())
Product.create(:description => "Nexus 7", :name => "Nexus 7", :release_date => Time.now())
Product.create(:description => "Galaxy SIII", :name => "Galaxy SIII", :release_date => Time.now())
Product.create(:description => "Lumia 920", :name => "Lumia 920", :release_date => Time.now())
Product.create(:description => "Windows Phone 8X", :name => "Windows Phone 8X", :release_date => Time.now())

# Test reviews
#Review.create(:content => "Test review content", :product_id => Product.find(1), :rating => 9, :title => "Test review", :user_id => 1)
#Review.create(:content => "Test review content", :product_id => Product.find(1), :rating => 6, :title => "Test review", :user_id => 2)

#Review.create(:content => "Test review content", :product_id => Product.find(2), :rating => 2, :title => "Test review", :user_id => 1)
#Review.create(:content => "Test review content", :product_id => Product.find(2), :rating => 8, :title => "Test review", :user_id => 2)

#Review.create(:content => "Test review content", :product_id => Product.find(3), :rating => 3, :title => "Test review", :user_id => 1)
#Review.create(:content => "Test review content", :product_id => Product.find(3), :rating => 10, :title => "Test review", :user_id => 2)
