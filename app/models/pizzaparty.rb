# == Schema Information
#
# Table name: pizzaparties
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Pizzaparty < ActiveRecord::Base

    has_and_belongs_to_many :users

    # un pizzaparty continent plusieurs commandes
    has_many :commandes

    attr_accessible :started_at, :ended_at, :user_ids

    validates_presence_of :started_at, :ended_at

    validates_associated :users

    def to_s
      id
    end
end
