# encoding: utf-8
module ApplicationHelper
  def nav
    {
      :pizzs => { :label => "Pizzas", :url => pizzs_url },
      :toppings => { :label => "Toppings", :url => toppings_url },
    }
  end
end
