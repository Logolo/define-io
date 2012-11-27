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