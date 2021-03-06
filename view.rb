class View
  def ask_for_recipe_name
    puts 'What is the recipe name?'
    print '> '
    gets.chomp
  end

  def ask_for_description
    puts 'What is the description of the recipe?'
    print '> '
    gets.chomp
  end

  def list_recipes(recipes)
    if recipes.empty?
      puts "You don't have any recipes in your cookbook."
    else
      puts "\n *** List of recipes ***"
      recipes.each_with_index do |recipe, index|
        puts "#{index + 1}. #{recipe.name}"
      end
    end
  end

  def destroy_a_recipe
    puts 'What is the recipe number you want to destroy?'
    print '> '
    gets.chomp.to_i - 1
  end
end
