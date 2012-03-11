class Size < ActiveRecord::Base

  has_many :prices
  has_many :pizzs, :through => :prices

end
