# encoding: utf-8
module IngredientsHelper
  def current_nav
    :ingredients
  end

  def bon_ingredient?(ingredient)
    if @pizz and !@pizz.name.nil? # no sense in testing new users that have no languages
        @pizz.ingredient.include?(ingredient)
    else
        false
    end
  end
end
