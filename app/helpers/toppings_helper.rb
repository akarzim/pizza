# encoding: utf-8
module ToppingsHelper
  def current_nav
    :toppings
  end

  def bon_topping?(topping)
    if @pizz and !@pizz.name.nil? # no sense in testing new users that have no languages
        @pizz.topping.include?(topping)
    else
        false
    end
  end
end
