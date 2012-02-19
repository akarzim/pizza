module IngredientsHelper
  
  def bon_ingredient?(ingredient)
    if @pizz && !@pizz.name.nil? # no sense in testing new users that have no languages
        @pizz.ingredient.include?(ingredient)
    else
        false
    end
end
  
  
end
