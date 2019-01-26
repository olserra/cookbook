require_relative 'recipe'
require 'csv'

class Cookbook
  attr_accessor :recipes

  def initialize(csv_file)
    @recipes = []
    @csv_file = csv_file

    CSV.foreach(csv_file) do |row|
      @recipes << Recipe.new(row[0], row[1])
    end
  end

  def all
    @recipes
  end

  def add_recipe(new_recipe)
    @recipes.push(new_recipe)
    update_csv
  end

  def remove_recipe(recipe_index)
    @recipes.delete_at(recipe_index)
    update_csv
  end

  private

  def update_csv
    CSV.open(@csv_file, "wb") do |csv|
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description]
      end
    end
  end
end





