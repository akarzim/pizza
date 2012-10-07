# encoding: utf-8
class Pizz < ActiveRecord::Base

  # un ingrédient peut avoir plusieurs pizza et et une pizza peut avoir plusieurs ingrédients
  has_and_belongs_to_many :ingredients

  has_many :prices
  has_many :sizes, :through => :prices

  # une pizza appartient à plusieurs commandes
  has_many :commandes
  #has_and_belongs_to_many :commandes

  attr_accessible :name, :ingredient_ids

  # vérifier que le nom est présent
  validates_presence_of :name

  # vérifier que les ingrédients soient validés également
  validates_associated :ingredients

  accepts_nested_attributes_for :prices

end
