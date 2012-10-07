# encoding: utf-8
class Ingredient < ActiveRecord::Base
  # un ingrédient peut avoir plusieurs pizza et et une pizza peut avoir plusieurs ingrédients
  has_and_belongs_to_many :pizzs

  attr_accessible :name

  # vérification (validates) le nom de l'ingrédient est unique et non sensible à la cast.
  validates :name, :uniqueness => { :case_sensitive => false }
end
