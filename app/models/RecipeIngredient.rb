class RecipeIngredient

  @@all = []

  attr_accessor :ingredient, :recipe

  def initialize(ingredient:, recipe:)
    @ingredient = ingredient
    @recipe = recipe
    @@all << self
  end

  #class methods

  def self.all
    @@all
  end

  #instance methods

end
