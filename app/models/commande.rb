class Commande < ActiveRecord::Base
  
  # une commande = 1 user, 1 pizz et 1 pizzaparty
  belongs_to :user
  belongs_to :pizzaparty
  #has_and_belongs_to_many :pizzs
  belongs_to :pizz
end
