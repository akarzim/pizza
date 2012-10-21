# == Schema Information
#
# Table name: prices
#
#  id         :integer          not null, primary key
#  amount     :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  pizz_id    :integer
#  size_id    :integer
#

class Price < ActiveRecord::Base

  belongs_to :size
  belongs_to :pizz

  attr_accessible :amount, :pizz, :size
end
