class Recipe

  @@all = []

  attr_accessor :name

  def initialize(name:)
    @name = name
    @@all << self
  end

  #class methods

  def self.all
    @@all
  end

  def self.most_popular
    recipe_array = self.all
    recipe_array.max_by { |recipe| recipe.recipe_cards.count }
  end

  #instance methods

  def recipe_cards
    RecipeCard.all.select { |rc| rc.recipe == self }
  end

  def users
    self.recipe_cards.map { |rc| rc.user }
  end

  def add_ingredients(array)
    array.each { |ingredient| RecipeIngredient.new(ingredient:ingredient, recipe:self) }
  end

  def find_recipes
    RecipeIngredient.all.select { |rc| rc.recipe == self }
  end

  def ingredients
    self.find_recipes.map { |rc| rc.ingredient }
  end




end
