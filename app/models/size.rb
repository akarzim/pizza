class Size < ActiveRecord::Base

  has_many :prices
  has_many :pizzs, :through => :prices

  attr_accessible :label

  def to_s
    label
  end
end
