# encoding: utf-8
module ApplicationHelper
  def nav
    {
      :pizzs => { :label => "Pizzas", :url => pizzs_url },
      :ingredients => { :label => "Ingredients", :url => ingredients_url },
    }
  end
end
