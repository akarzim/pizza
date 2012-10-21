# == Schema Information
#
# Table name: commandes
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  pizzaparty_id :integer
#  pizz_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Commande < ActiveRecord::Base
  
  # une commande = 1 user, 1 pizz et 1 pizzaparty
  belongs_to :user
  belongs_to :pizzaparty
  #has_and_belongs_to_many :pizzs
  belongs_to :pizz
end
