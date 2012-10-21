# == Schema Information
#
# Table name: sizes
#
#  id         :integer          not null, primary key
#  label      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Size < ActiveRecord::Base

  has_many :prices
  has_many :pizzs, :through => :prices

  attr_accessible :label

  def to_s
    label
  end
end
