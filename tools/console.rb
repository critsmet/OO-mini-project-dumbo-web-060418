require_relative '../config/environment.rb'

chris = User.new(name:"Chris")

potato = Ingredient.new(name:"Potato")

flour = Ingredient.new(name:"Flour")
sugar = Ingredient.new(name:"Sugar")
butter = Ingredient.new(name:"Butter")
cheese = Ingredient.new(name:"Cheese")

lettuce = Ingredient.new(name:"Lettuce")
tomato = Ingredient.new(name:"Tomato")
ketchup = Ingredient.new(name:"Ketchup")
meat  = Ingredient.new(name:"Meat")
bun  = Ingredient.new(name:"Bun")

burger = Recipe.new(name:"Burger")
fries = Recipe.new(name:"Fries")
cake = Recipe.new(name:"Cake")
potato_skins = Recipe.new(name:"Potato Skins")

burger_ingredients = []
burger_ingredients << bun << meat << ketchup << tomato << lettuce
burger.add_ingredients(burger_ingredients)

fries_ingredients = []
fries_ingredients << potato
fries.add_ingredients(fries_ingredients)

cake_ingredients = []
cake_ingredients << flour << sugar << butter
cake.add_ingredients(cake_ingredients)

potato_skins_ingredients = []
potato_skins_ingredients << meat << potato << tomato << cheese
potato_skins.add_ingredients(potato_skins_ingredients)


chris.add_recipe_card(burger, "Today", 10)
chris.add_recipe_card(potato_skins, "Yesterday", 2)
chris.add_recipe_card(cake, "4/20", 11)
chris.add_recipe_card(fries, "1/1", 9)

chris.declare_allergen(flour)

binding.pry
