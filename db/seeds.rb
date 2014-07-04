# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	# Subcategory.create(:name => "Herbs", :category_id => 1)

# c = Catagory.create(al;kdfja;lkdfja)
# names = %w[Herbs Nextthing Next]

# names.each do |name|
# 	a = Subcatagory.create(:name => name)

# 	a.catagory = c
# 	c.subcatagories  << a
# end



# Populate Store Model
kroger = Store.create(:name => "Kroger", :location => "2641 Plymouth Rd, Ann Arbor, MI 48105")
whole_foods = Store.create(:name => "Whole Foods", :location => "3135 Washtenaw Ave, Ann Arbor, MI 48104")
costco = Store.create(:name => "Costco", :location => "771 Airport Blvd, Pittsfield Charter Township, MI 48108")



# Kroger Store Categories
categories = ["Popular","Produce","Meat & Seafood","Dairy & Eggs","Breakfast","Canned Products","Bakery","Beverage","Frozen","International","Dry Goods & Pasta","Pantry","Snacks","Household","Personal Care","Baby Care","Pets"]

categories.each do |category|
	Category.create(:name => category, :store_id => 1)
end

## Kroger Produce Category's Subcatagories
produces = ["Fresh Fruit","Fresh Vegetable","Packaged Produce","Herbs","Tofu & Meat Alternatives","Organic Produce"]
produces.each do |produce|
	Subcategory.create(:name => produce, :category_id => 2)
end


meats = ["Beaf",'Chicken','Pork','Turkey & Lamb','Deli & Processed Meat','Organic Meat','Seafood']
meats.each do |meat|
	Subcategory.create(:name => meat, :category_id => 3)
end


dairys = ['Milk','Eggs','Cheese','Yogurt','Cream','Butter','Soy & Lactose-free']
dairys.each do |dairy|
	Subcategory.create(:name => dairy, :category_id => 4)
end


breakfasts = ['cereal','Breakfast Bars & Pastries','Breakfast Mix','Peanut Butter & Jam']
breakfasts.each do |breakfast|
	Subcategory.create(:name =>  breakfast, :category_id => 5)
end


canns = ['Fruit','Vegetables','Beans','Soups']
canns.each do |can|
	Subcategory.create(:name => can, :category_id => 6)
end


bakeries = ['Breakfast Bakery','Buns & Rolls','Bakery Dessert']
bakeries.each do |bakery|
	Subcategory.create(:name => bakery, :category_id => 7)
end


beverages = ['Coffee','Tea','Juice & Flavored Beverages','Energy & Sports Drink','Soft Drink & Water']
beverages.each do |beverage|
	Subcategory.create(:name => beverage, :category_id => 8)
end


frozens = ['Breakfast','Vegetables','Meat','Seafood','Meals','Appetizers & Sides','Pizza','Dessert','Ice Cream & Topping']
frozens.each do |frozen|
	Subcategory.create(:name => frozen, :category_id => 9)
end


internationals = ['Aisan Food','Latino Food','More International']
internationals.each do |international|
	Subcategory.create(:name => international, :category_id => 10)
end


dries = ['Dry Pasta','Pasta Sauce','Instant Food','Grains,Rice & Dried Goods']
dries.each do |dry|
	Subcategory.create(:name => dry, :category_id => 11)
end


pantries = ['Condiments','Honey,Syrup & Nectar','Spice & Seasoning','Spreads & Preserved Dips','Salad Dressing & Topping','Oil & Vinegars','Marinade & Meat Preparation','Doughs & Bake Mixes','Baking Ingredients','Baking Supplies & Decor']
pantries.each do |pantry|
	Subcategory.create(:name => pantry, :category_id => 12)
end


snacks = ['Candy & Chocolate','Chips & Pretzel','Cookies & Cake','Nuts,Seeds & Dred Fruit','Crackers','Energy & Granola Bars','Popcorn & Jerky','Trail Mix & Snack Mix','Mint & Gum','Fruit & Vegetable Snacks']
snacks.each do |snack|
	Subcategory.create(:name => snack, :category_id => 13)
end


households = ['Cleaning Products','Laundry','Dish Detergent','Food Storage','Disposable Tableware & Utensils','Toilet Paper & Ohter Paper Goods','Kitchen Supplies','Trash Bags','Other Household Products']
households.each do |household|
	Subcategory.create(:name => household, :category_id => 14)
end


personals = ['Hair & Body Care','Facial Skin','Oral Care','Feminine Care','Men needs','Family Planning','OTC Meds & Vitamins']
personals.each do |personal|
	Subcategory.create(:name => personal, :category_id => 15)
end


babies = ['Baby Accessories','Baby Bath & Body Care','Baby Food & Formula','Diapers & Wipes','Baby First Aid & Vitamins']
babies.each do |baby|
	Subcategory.create(:name => baby, :category_id => 16)
end


pets = ['Dogs','Cats','Other Pet Needs']
pets.each do |pet|
	Subcategory.create(:name => pet, :category_id => 17)
end


















