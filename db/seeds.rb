# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ruby = Category.create name: 'Ruby', url: 'Red'
weiss = Category.create name: 'Weiss', url: 'White'
blake = Category.create name: 'Blake', url: 'Black'
yang = Category.create name: 'Yang', url: 'Yellow'

Product.create(:product_name => "Sickle", :description => "color_red", :price => 1, :url => "first", category_id: ruby.id)
Product.create(:product_name => "Fencing", :description => "color_white", price: 2, url: "second", category_id: weiss.id)
Product.create(:product_name => "Kinife", :description => "color_black", price: 3, url: "third", category_id: blake.id)
Product.create(:product_name => "Fist", :description => "color_yellow", price: 4, url: "fourth", category_id: yang.id)