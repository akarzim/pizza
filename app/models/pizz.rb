class Pizz < ActiveRecord::Base

  # un ingrédient peut avoir plusieurs pizza et et une pizza peut avoir plusieurs ingrédients
  has_and_belongs_to_many :ingredients
    
  has_many :prices
  has_many :sizes, :through => :prices

  # une pizza appartient à plusieurs commandes
  has_many :commandes
  #has_and_belongs_to_many :commandes

  # vérifier que le nom est présent
  validates :name, :presence => true

  # vérifier que le prix est présent
  # validates :price, :presence => true

  # vérifier que les ingrédients soient validés également
  validates_associated :ingredients
  
  accepts_nested_attributes_for :prices

  
end
