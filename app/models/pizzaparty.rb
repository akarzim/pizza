class Pizzaparty < ActiveRecord::Base
  
    # un pizzaparty continent plusieurs commandes
    has_many :commandes
end
