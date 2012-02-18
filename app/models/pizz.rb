class Pizz < ActiveRecord::Base
  has_and_belongs_to_many :ingredients
  #has_and_belongs_to_many :commandes
  has_many :commandes

  validates :name, :presence => true
  validates :price, :presence => true

  validates_associated :ingredients
end
