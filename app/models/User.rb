class User

  @@all = []

  attr_accessor :name

  def initialize(name:)
    @name=name
    @@all << self
  end

  #class methods

  def self.all
    @@all
  end

  #instance methods

  def declare_allergen(ingredient)
    Allergen.new(user:self, ingredient:ingredient)
  end

  def allergens
    Allergen.all.select {|allergen| allergen.user == self}
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(user:self, recipe:recipe, date:date, rating:rating)
  end

  def recipes
    RecipeCard.all.select { |rc| rc.user == self}
  end

  def top_three_recipes
    sorted = self.recipes.sort_by { |recipe| recipe.rating }
    sorted.reverse[0..2]
  end

end
