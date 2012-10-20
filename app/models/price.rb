class Price < ActiveRecord::Base

  belongs_to :size
  belongs_to :pizz

  attr_accessible :amount, :pizz, :size
end
