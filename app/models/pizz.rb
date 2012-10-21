# encoding: utf-8
# == Schema Information
#
# Table name: pizzs
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  ingredients_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Pizz < ActiveRecord::Base

  # un ingrédient peut avoir plusieurs pizza et et une pizza peut avoir plusieurs ingrédients
  has_and_belongs_to_many :toppings

  has_many :prices
  has_many :sizes, :through => :prices

  # une pizza appartient à plusieurs commandes
  has_many :commandes
  #has_and_belongs_to_many :commandes

  attr_accessible :name, :toppings

  # vérifier que le nom est présent
  validates_presence_of :name

  # vérifier que les ingrédients soient validés également
  validates_associated :toppings

  accepts_nested_attributes_for :prices

  def to_s
    name
  end
end
