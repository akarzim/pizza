# == Schema Information
#
# Table name: pizzaparties
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Pizzaparty < ActiveRecord::Base

    # un pizzaparty continent plusieurs commandes
    has_many :commandes

    def to_s
      id
    end
end
