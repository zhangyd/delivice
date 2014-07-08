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
Subcategory.create(:name => 'popular', :category_id => 1)


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


internationals = ['Asian Food','Latino Food','More International']
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



### Kroger Popular Category's popular Subcatagory's 
Item.create(:name => 'Banana', :price => 0.29, :unit => 'Each',:subcategory_id => 1)
Item.create(:name => 'Fuji Apple', :price => 1.69, :unit => 'Each (Large)',:subcategory_id => 1)
Item.create(:name => 'Anjou Pear (Red)', :price => 1.39, :unit => 'Each',:subcategory_id => 1)
Item.create(:name => 'Carrot', :price => 4.99, :unit => '5 lb bag',:subcategory_id => 1)
Item.create(:name => 'Chinese Broccoli(Gai Lan)', :price => 2.49, :unit => 'Each',:subcategory_id => 1)
Item.create(:name => 'Gold Delicious Apple', :price => 1.49, :unit => 'Each (Large)',:subcategory_id => 1)
Item.create(:name => 'Asian Pear', :price => 1.39, :unit => 'Each',:subcategory_id => 1)
Item.create(:name => 'Kale', :price => 1.99, :unit => 'Each',:subcategory_id => 1)
Item.create(:name => 'Ginger Root', :price => 1.49, :unit => 'Each',:subcategory_id => 1)
Item.create(:name => 'Avocado', :price => 1.49, :unit => 'Each',:subcategory_id => 1)
Item.create(:name => 'Pepper(Green)', :price => 1.29, :unit => 'Each',:subcategory_id => 1)
Item.create(:name => 'Taro Root(Small)', :price => 2.99, :unit => 'Each',:subcategory_id => 1)
Item.create(:name => 'Snow Peas', :price => 5.19, :unit => 'Each',:subcategory_id => 1)
Item.create(:name => 'Raspberry', :price => 3.25, :unit => '6oz Carton',:subcategory_id => 1)
Item.create(:name => 'Lemon', :price => 0.79, :unit => 'Each',:subcategory_id => 1)
Item.create(:name => 'Naval Orange', :price => 1.00, :unit => 'Each (Large)',:subcategory_id => 1)
Item.create(:name => 'Personal Watermelon', :price => 5.19, :unit => 'Each (Small)',:subcategory_id => 1)


### Kroger Produce Category's Fresh Fruit Subcatagory's 
Item.create(:name => 'Banana', :price => 0.29, :unit => 'Each',:subcategory_id => 2)
Item.create(:name => 'Blueberry', :price => 3.25, :unit => '6oz Carton',:subcategory_id => 2)
Item.create(:name => 'Strawberry', :price => 3.25, :unit => '1 lb Carton',:subcategory_id => 2)
Item.create(:name => 'Raspberry', :price => 3.25, :unit => '6oz Carton',:subcategory_id => 2)
Item.create(:name => 'Blackberry', :price => 3.89, :unit => '6oz Carton',:subcategory_id => 2)
Item.create(:name => 'Lime', :price => 1.00, :unit => 'Each',:subcategory_id => 2)
Item.create(:name => 'Lemon', :price => 0.79, :unit => 'Each',:subcategory_id => 2)
Item.create(:name => 'Naval Orange', :price => 1.00, :unit => 'Each (Large)',:subcategory_id => 2)
Item.create(:name => 'Seedless Watermelon', :price => 7.79, :unit => 'Each',:subcategory_id => 2)
Item.create(:name => 'Personal Watermelon', :price => 5.19, :unit => 'Each (Small)',:subcategory_id => 2)
Item.create(:name => 'Fuji Apple', :price => 1.69, :unit => 'Each (Large)',:subcategory_id => 2)
Item.create(:name => 'Apple', :price => 1.49, :unit => 'Each (Large)',:subcategory_id => 2)
Item.create(:name => 'Delicious Apple', :price => 1.49, :unit => 'Each (Large)',:subcategory_id => 2)
Item.create(:name => 'Gold Delicious Apple', :price => 1.49, :unit => 'Each (Large)',:subcategory_id => 2)
Item.create(:name => 'Jazz Apple', :price => 1.69, :unit => 'Each (Large)',:subcategory_id => 2)
Item.create(:name => 'Granny Smith Apple', :price => 1.59, :unit => 'Each',:subcategory_id => 2)
Item.create(:name => 'McIntosh Apple', :price => 1.49, :unit => 'Each (Large)',:subcategory_id => 2)
Item.create(:name => 'Yellow Flesh Nectarine', :price => 1.69, :unit => 'Each',:subcategory_id => 2)
Item.create(:name => 'Nectarine', :price => 1.69, :unit => 'Each',:subcategory_id => 2)
Item.create(:name => 'Yellow Flesh Peach', :price => 1.99, :unit => 'Each',:subcategory_id => 2)
Item.create(:name => 'Asian Pear', :price => 1.39, :unit => 'Each',:subcategory_id => 2)
Item.create(:name => 'Anjou Pear (Red)', :price => 1.39, :unit => 'Each',:subcategory_id => 2)
Item.create(:name => 'Anjou Pear (Green)', :price => 1.39, :unit => 'Each',:subcategory_id => 2)
Item.create(:name => 'Pomegrante', :price => 2.60, :unit => 'Each',:subcategory_id => 2)
Item.create(:name => 'Honeydew', :price => 5.19, :unit => 'Each',:subcategory_id => 2)
Item.create(:name => 'Black Plum', :price => 1.29, :unit => 'Each',:subcategory_id => 2)

### Kroger Produce Category's Fresh Vegetable Subcatagory's 
Item.create(:name => 'Red Leaf Lettuce', :price => 2.19, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Green Leaf Lettuce', :price => 2.19, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Romaine Lettuce', :price => 2.19, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Carrot', :price => 4.99, :unit => '5 lb bag',:subcategory_id => 3)
Item.create(:name => 'Red Boston Lettuce', :price => 2.29, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Boston Lettuce', :price => 2.29, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Napa Cabbage', :price => 2.69, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Celery', :price => 2.29, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Cabbage', :price => 2.29, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Red Cabbage', :price => 2.29, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Kale', :price => 1.99, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Leek', :price => 3.89, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Cauliflower', :price => 3.99, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Roma Tomato', :price => 0.49, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'On-the-Vine Red Tomato', :price => 1.19, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Red Tomato', :price => 1.69, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Asparagus', :price => 3.99, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Onion', :price => 0.99, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Ginger Root', :price => 1.49, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Garlic', :price => 0.69, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Pepper(Green)', :price => 1.29, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Bell Pepper(Orange)', :price => 1.29, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Bell Pepper(Yellow)', :price => 1.29, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Pepper(Red)', :price => 1.29, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Snow Peas', :price => 5.19, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Green Turnips', :price => 2.99, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Parsnips', :price => 2.19, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Belgian Endive', :price => 3.89, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Opo Squash', :price => 4.99, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Chinese Broccoli(Gai Lan)', :price => 2.49, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Yu Choy', :price => 2.39, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Shanghai Bok Choy', :price => 1.99, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Radish(Lo Bok)', :price => 4.39, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Radicchio', :price => 2.19, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Taro Root(Small)', :price => 2.99, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Japanese Yam', :price => 4.59, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Okra', :price => 3.89, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Jalapeno Pepper', :price => 3.29, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Anabeim Pepper', :price => 3.89, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Cubanelle Peppers', :price => 3.29, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Habanero Peppers', :price => 3.89, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Serrano Peppers', :price => 3.29, :unit => 'Each',:subcategory_id => 3)
Item.create(:name => 'Avocado', :price => 1.49, :unit => 'Each',:subcategory_id => 3)

### Kroger Produce Category's Packaged Produce Subcatagory's 
Item.create(:name => 'White Mushroom', :price => 2.59, :unit => '8 oz (Whole)',:subcategory_id => 4)
Item.create(:name => 'Large White Mushroom', :price => 6.49, :unit => '24 oz (Whole)',:subcategory_id => 4)
Item.create(:name => 'White Sliced Mushroom', :price => 2.59, :unit => '8 oz',:subcategory_id => 4)
Item.create(:name => 'Portobello Mushroom', :price => 4.29, :unit => '6 oz (Whole)',:subcategory_id => 4)
Item.create(:name => 'Portobello Mushroom', :price => 4.29, :unit => '8 oz (Sliced)',:subcategory_id => 4)
Item.create(:name => 'Baby Bella Mushroom', :price => 3.89, :unit => '8 oz (Whole)',:subcategory_id => 4)
Item.create(:name => 'Mushroom', :price => 3.89, :unit => '8 oz (Sliced)',:subcategory_id => 4)
Item.create(:name => 'Baby Carrots', :price => 1.99, :unit => '16 oz',:subcategory_id => 4)
Item.create(:name => 'Caesar', :price => 4.55, :unit => '7.6 oz',:subcategory_id => 4)
Item.create(:name => 'Classic Romain', :price => 4.55, :unit => '15 oz',:subcategory_id => 4)
Item.create(:name => 'Shredded Lettuce', :price => 2.59, :unit => '8 oz',:subcategory_id => 4)
Item.create(:name => 'Ultimate Caesar', :price => 4.55, :unit => '8.9 oz',:subcategory_id => 4)
Item.create(:name => 'American Blend', :price => 3.79, :unit => '12 oz',:subcategory_id => 4)
Item.create(:name => 'Heart of Romaine', :price => 3.79, :unit => '10 oz',:subcategory_id => 4)
Item.create(:name => 'Sprint Mix + Baby Spinach', :price => 3.79, :unit => '5 oz',:subcategory_id => 4)
Item.create(:name => 'Very Veggie', :price => 3.79, :unit => '12 oz',:subcategory_id => 4)
Item.create(:name => 'Minced Garlic', :price => 3.29, :unit => '4.5 oz',:subcategory_id => 4)
Item.create(:name => 'Shredded Carrots', :price => 2.59, :unit => '10 oz',:subcategory_id => 4)
Item.create(:name => 'Celery Hearts (Organic)', :price => 3.89, :unit => '1 lb',:subcategory_id => 4)
Item.create(:name => 'Romaine Hearts (Organic)', :price => 4.79, :unit => '12 oz',:subcategory_id => 4)
Item.create(:name => 'Mini Peeled Carrots (Organic)', :price => 4.99, :unit => '2 lb',:subcategory_id => 4)
Item.create(:name => 'Portabella Mushroom (Organic)', :price => 5.19, :unit => '6 oz (Sliced)',:subcategory_id => 4)
Item.create(:name => 'Baby Bella Mushroom (Organic)', :price => 4.59, :unit => '8 oz (Whole)',:subcategory_id => 4)
Item.create(:name => 'White Mushroom (Organic)', :price => 3.29, :unit => '8 oz (Whole)',:subcategory_id => 4)
Item.create(:name => 'Baby Spinach (Organic)', :price => 3.99, :unit => '5 oz',:subcategory_id => 4)
Item.create(:name => 'Baby Kale (Organic)', :price => 3.99, :unit => '5 oz',:subcategory_id => 4)
Item.create(:name => 'Heart of Romaine', :price => 3.99, :unit => '5 oz',:subcategory_id => 4)
Item.create(:name => 'Baby Arugula (Organic)', :price => 3.99, :unit => '5 oz',:subcategory_id => 4)
Item.create(:name => 'Baby Spring Mix (Organic)', :price => 3.99, :unit => '5 oz',:subcategory_id => 4)
Item.create(:name => 'Baby Romaine (Organic)', :price => 3.99, :unit => '5 oz',:subcategory_id => 4)
Item.create(:name => 'Organic Minced Garlic', :price => 3.89, :unit => '4.5 oz',:subcategory_id => 4)









# Whole Foods Store Categories
categories = ['Popular','Produce','Meat & Seafood','Deli','Bakery','Dairy & Eggs','Bulk','Canned Goods','Dry Goods & Pasta','Pantry','International','Beverages','Breakfast','Snacks','Frozen','Personal Care','Babies','Pets','Household']
categories.each do |category|
	Category.create(:name => category, :store_id => 2)
end

## Whole Foods Category's Subcatagories
Subcategory.create(:name => 'popular', :category_id => 18)

produces = ['Fresh Fruits','Fresh Vegetables','Fresh Herbs','Packaged Fruit & Vegetables','Tofu & Meat Alternatives']
produces.each do |produce|
	Subcategory.create(:name => produce, :category_id => 19)
end

meats = ['Meat Counter','Poultry Counter','Seafood Counter','Packaged Meat','Packaged Poultry','Packaged Seafood','Hot Dogs & Bacon & Sausage']
meats.each do |meat|
	Subcategory.create(:name => meat, :category_id => 20)
end


delis = ['Lunch Meat','Specialty Cheese','Prepared Meals','Prepared Soup & Salad','Fresh Dips & Tapenades','Tofu & Meat Alternatives']
delis.each do |deli|
	Subcategory.create(:name => deli, :category_id => 21)
end

bakeries = ['Bread','Tortillas & Flat Bread','Buns & Rolls','Breakfast Bakery','Bakery Desserts']
bakeries.each do |bakery|
	Subcategory.create(:name => bakery, :category_id => 22)
end 

dairys = ['Milk','Cream','Eggs','Packaged Cheese','Yogurt','Butter','Other Cream & Cheese']
dairys.each do |dairy|
	Subcategory.create(:name => dairy, :category_id => 23)
end

bulks = ['Grains, Rice & Dried Goods','Bulk Butters, Honey & Spreads']
bulks.each do |bulk|
	Subcategory.create(:name => bulk, :category_id => 24)
end

canns = ['Canned Fruit & Applesauce','Canned & Jarred Vegetables','Canned Meals & Beans']
canns.each do |can|
	Subcategory.create(:name => can, :category_id => 25)
end

dries = ['Dry Pasta','Fresh Pasta','Pasta Sauce','Instant Foods','Grains, Rice & Dried Goods']
dries.each do |dry|
	Subcategory.create(:name => dry, :category_id => 26)
end

pantries = ['Condiments','Honeys, Syrups & Nectar','Spices & Seasonings','Spreads']
pantries.each do |pantry|
	Subcategory.create(:name => pantry, :category_id => 27)
end

internationals = ['Asian Foods','Latino Foods','Indian Foods','Kosher Foods']
internationals.each do |international|
	Subcategory.create(:name => international, :category_id => 28)
end

beverages = ['Coffee','Refrigerated','Tea','Juice & Nectars','Energy & Sports Drinks','Soft Drinks']
beverages.each do |beverage|
	Subcategory.create(:name => beverage, :category_id => 29)
end

breakfasts = ['Cereal','Hot Cereal & Pancake Mixes','Granola','Breakfast Bars & Pastris']
breakfasts.each do |breakfast|
	Subcategory.create(:name => breakfast, :category_id => 30)
end

snacks = ['Candy & Chocolate','Chips & Pretzels','Cookies & Cakes','Crackers','Energy & Granola Bars']
snacks.each do |snack|
	Subcategory.create(:name => snack, :category_id => 31)
end

frozens = ['Frozen Breakfast','Frozen Appetizers & Sides','Frozen Meals','Frozen Meat & Seafood']
frozens.each do |frozen|
	Subcategory.create(:name => frozen, :category_id => 32)
end 

personals = ['Facial Care','Deodorants','Body Lotions & Soap','Shave Needs','Oral Hygiene']
personals.each do |personal|
	Subcategory.create(:name => personal, :category_id => 33)
end 

babies = ['Baby Bath & Body Care','Baby Food & Formula','Diapers & Wipes','Baby First Aid & Vitamins']
babies.each do |baby|
	Subcategory.create(:name => baby, :category_id => 34)
end 

pets = ['Cat Food & Care','Dog Food & Care']
pets.each do |pet|
	Subcategory.create(:name => pet, :category_id => 35)
end 

households = ['Aire Fresheners & Candles','Cleaning Products','Dish Detergents','Food Storage']
households.each do |household|
	Subcategory.create(:name => household, :category_id => 36)
end


### Whole Foods Popular Category's popular Subcatagory's 
Item.create(:name => '365 Organic Coconut Milk', :price => 2.19, :unit => '13.5 oz',:subcategory_id => 98)
Item.create(:name => 'San J Reduced Sodium Tamari Soy Sauce ', :price => 3.39, :unit => '10 fl oz',:subcategory_id => 98)
Item.create(:name => 'NaSoya Wonton Wrappers', :price => 2.59, :unit => '12 oz',:subcategory_id => 98)
Item.create(:name => 'San J Organic Reduced Sodium Gluten Free Tamari Soy Sauce', :price => 3.69, :unit => '20 oz',:subcategory_id => 98)
Item.create(:name => 'Star Anise Foods Brown Rice Spring Roll Wrappers', :price => 4.19, :unit => '8 oz',:subcategory_id => 98)
Item.create(:name => 'Annie Chun\'s Pad Thai Rice Noodles', :price => 3.19, :unit => '8 oz',:subcategory_id => 98)
Item.create(:name => 'Hatch Select Diced Peeled Green Chiles', :price => 2.39, :unit => '4 oz',:subcategory_id => 98)
Item.create(:name => '365 Organic Refried Pinto Beans ', :price => 1.49, :unit => '15 oz',:subcategory_id => 98)
Item.create(:name => 'Frontera Mexico Taco Chicken Seasoning Skillet Sauce ', :price => 2.69, :unit => '8 oz',:subcategory_id => 98)
Item.create(:name => 'Hatch Medium Enchilada Sauce ', :price => 3.99, :unit => '15 oz',:subcategory_id => 98)
Item.create(:name => 'Dr. McDougall\'s Pad Thai Noodle Entree ', :price => 1.79, :unit => '2 oz',:subcategory_id => 98)
Item.create(:name => 'Kikkoman International Inc Organic Naturally Brewed Soy Sauce', :price => 3.39, :unit => '10 fl oz',:subcategory_id => 98)
Item.create(:name => 'Herdez Chipotle Peppers', :price => 1.69, :unit => '7 oz',:subcategory_id => 98)


### Whole Foods International Category's Asian Subcatagory's 
Item.create(:name => '365 Organic Coconut Milk', :price => 2.19, :unit => '13.5 oz',:subcategory_id => 143)
Item.create(:name => '365 Organic Lite Coconut Milk', :price => 1.49, :unit => '13.5 oz',:subcategory_id => 143)
Item.create(:name => 'San J Reduced Sodium Tamari Soy Sauce ', :price => 3.39, :unit => '10 fl oz',:subcategory_id => 143)
Item.create(:name => 'Thai Kitchen Green Curry Paste', :price => 3.69, :unit => '4 oz',:subcategory_id => 143)
Item.create(:name => 'Reese Sliced Water Chestnuts', :price => 1.19, :unit => '8 oz',:subcategory_id => 143)
Item.create(:name => 'San J Tamari Soy Sauce', :price => 2.79, :unit => '10 fl oz',:subcategory_id => 143)
Item.create(:name => 'Reese Fancy Sliced Bamboo Shoots', :price => 1.19, :unit => '8 oz',:subcategory_id => 143)
Item.create(:name => 'Koyo Reduced Sodium Garlic Pepper Ramen', :price => 1.39, :unit => '2.1 oz',:subcategory_id => 143)
Item.create(:name => 'Annie Chun\'s Roasted Wasabi Seaweed Snacks', :price => 1.99, :unit => '.35 oz',:subcategory_id => 143)
Item.create(:name => 'Annie Chun\'s Hot & Sour Soup Bowl', :price => 2.99, :unit => '5.5 oz',:subcategory_id => 143)
Item.create(:name => 'Thai Kitchen Coconut Milk Organic', :price => 2.99, :unit => '13.66 fl oz',:subcategory_id => 143)
Item.create(:name => 'Sunja\'s Cabbage Kimchee', :price => 5.39, :unit => '16 oz',:subcategory_id => 143)
Item.create(:name => 'Ka Me Rice Stick Noodles', :price => 3.39, :unit => '8 oz',:subcategory_id => 143)
Item.create(:name => 'Koyo Organic Wide Udon Asian Pasta', :price => 2.69, :unit => '8 oz',:subcategory_id => 143)
Item.create(:name => 'NaSoya Wonton Wrappers', :price => 2.59, :unit => '12 oz',:subcategory_id => 143)
Item.create(:name => 'Dr. McDougall\'s Pad Thai Noodle Entree ', :price => 1.79, :unit => '2 oz',:subcategory_id => 143)
Item.create(:name => 'San J Organic Shoyu Soy Sauce', :price => 3.39, :unit => '10 fl oz',:subcategory_id => 143)
Item.create(:name => 'San J Szechwan Stir Fry Marinade Sauce ', :price => 4.39, :unit => '10 fl oz',:subcategory_id => 143)
Item.create(:name => 'Thai Kitchen Organic Lite Coconut Milk', :price => 2.59, :unit => '13.66 fl oz',:subcategory_id => 143)
Item.create(:name => 'Annie Chun\'s Spicy Chicken Ramen', :price => 1.79, :unit => '4.7 oz',:subcategory_id => 143)
Item.create(:name => 'San J Organic Reduced Sodium Gluten Free Tamari Soy Sauce', :price => 3.69, :unit => '20 oz',:subcategory_id => 143)
Item.create(:name => 'Star Anise Foods Brown Rice Spring Roll Wrappers', :price => 4.19, :unit => '8 oz',:subcategory_id => 143)
Item.create(:name => 'Thai Kitchen Lite Coconut Milk', :price => 2.69, :unit => '13.66 fl oz',:subcategory_id => 143)
Item.create(:name => 'JFC Roasted White Sesame Seeds', :price => 5.39, :unit => '8 oz',:subcategory_id => 143)
Item.create(:name => 'Eden Foods Toasted Sushi Nori', :price => 6.99, :unit => '.6 oz',:subcategory_id => 143)
Item.create(:name => 'Eden Foods Buckwheat Soba', :price => 7.99, :unit => '8 oz',:subcategory_id => 143)
Item.create(:name => 'Emerald Cove Nori', :price => 5.99, :unit => '10 ct',:subcategory_id => 143)
Item.create(:name => 'Thai Kitchen Lemongrass', :price => 5.39, :unit => '.31 oz',:subcategory_id => 143)
Item.create(:name => 'Lee Kum Kee Black Bean Garlic Sauce ', :price => 3.39, :unit => '8 oz',:subcategory_id => 143)
Item.create(:name => 'Star Anise Foods Happy Pho Zesty Ginger Noodle Soup', :price => 4.39, :unit => '4.5 oz',:subcategory_id => 143)
Item.create(:name => 'Kikkoman International Inc Organic Naturally Brewed Soy Sauce', :price => 3.39, :unit => '10 fl oz',:subcategory_id => 143)
Item.create(:name => 'San J Soy Tamari Sauce', :price => 4.39, :unit => '20 oz',:subcategory_id => 143)
Item.create(:name => 'Annie Chun\'s Pad Thai Rice Noodles', :price => 3.19, :unit => '8 oz',:subcategory_id => 143)
Item.create(:name => 'Tasty Bite Thai Basil Instant Asian Noodles', :price => 2.29, :unit => '8.8 oz',:subcategory_id => 143)
Item.create(:name => 'San J Sweet & Tangy Sauce', :price => 1.69, :unit => '10 oz',:subcategory_id => 143)
Item.create(:name => 'Eden Organic Brown Rice Vinegar', :price => 5.99, :unit => '10 oz',:subcategory_id => 143)

### Whole Foods International Category's Latino Subcatagory's 
Item.create(:name => '365 Organic Refried Black Beans ', :price => 1.49, :unit => '15 oz',:subcategory_id => 144)
Item.create(:name => 'Garden Of Eatin\' Organic Yellow Taco Shells', :price => 3.39, :unit => '5.5 oz',:subcategory_id => 144)
Item.create(:name => 'Frontera Classic Fajita All Purpose Seasoning Skillet Sauce', :price => 2.69, :unit => '8 oz',:subcategory_id => 144)
Item.create(:name => 'Frontera Chipotle Garlic Taco Skillet Sauce ', :price => 2.69, :unit => '8 oz',:subcategory_id => 144)
Item.create(:name => 'Amy\'s Organic Light In Sodium Refried Black Beans ', :price => 2.99, :unit => '15.4 oz',:subcategory_id => 144)
Item.create(:name => '365 Organic Chili & Lime Refried Pinto Beans ', :price => 1.49, :unit => '15 oz',:subcategory_id => 144)
Item.create(:name => 'Herdez Chipotle Peppers', :price => 1.69, :unit => '7 oz',:subcategory_id => 144)
Item.create(:name => 'Hatch Select Diced Peeled Green Chiles', :price => 2.39, :unit => '4 oz',:subcategory_id => 144)
Item.create(:name => 'Herdez Hot Salsa Casera', :price => 3.29, :unit => '16 oz',:subcategory_id => 144)
Item.create(:name => 'Frontera Red Chili Beef Barbacoa Slow Cooking Sauce ', :price => 2.69, :unit => '8 oz',:subcategory_id => 144)
Item.create(:name => 'Amy\'s Organic Light In Sodium Traditional Refried Beans ', :price => 2.99, :unit => '15.4 oz',:subcategory_id => 144)
Item.create(:name => '365 Organic Refried Pinto Beans ', :price => 1.49, :unit => '15 oz',:subcategory_id => 144)
Item.create(:name => 'Frontera Mexico Taco Chicken Seasoning Skillet Sauce ', :price => 2.69, :unit => '8 oz',:subcategory_id => 144)
Item.create(:name => 'Frontera Spicy Guacamole Mix Pouch', :price => 1.99, :unit => '4.5 oz',:subcategory_id => 144)
Item.create(:name => 'Hatch Medium Enchilada Sauce ', :price => 3.99, :unit => '15 oz',:subcategory_id => 144)

























