# encoding: utf-8
module ApplicationHelper
  def nav
    {
      :pizzaparties => { :label => "Parties", :url => pizzaparties_url },
      :pizzs => { :label => "Pizzas", :url => pizzs_url },
      :toppings => { :label => "Toppings", :url => toppings_url },
    }
  end

  def current_nav
    nil
  end
end
