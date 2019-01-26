require_relative 'recipe'
require_relative 'view'

class Controller
  attr_accessor :new_recipe, :destroy_a_recipe

  def initialize(cookbook)
    @view = View.new
    @cookbook = cookbook
  end

  def list
    recipes = @cookbook.recipes

    @view.list_recipes(recipes)
  end

  def create
    recipe_name = @view.ask_for_recipe_name
    description = @view.ask_for_description
    new_recipe = Recipe.new(recipe_name, description)
    @cookbook.add_recipe(new_recipe)
  end

  def destroy
    destroyed_recipe = @view.destroy_a_recipe
    @cookbook.destroy_a_recipe(destroyed_recipe)
  end
end
