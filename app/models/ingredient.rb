class Ingredient < ActiveRecord::Base
  has_and_belongs_to_many :pizzs

  validates :name, :uniqueness => { :case_sensitive => false }
end
