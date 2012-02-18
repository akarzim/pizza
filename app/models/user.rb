# généré par la gem sorcery pour la gestion des utilisateurs

class User < ActiveRecord::Base
  authenticates_with_sorcery!

  # un utilisateur a plusieurs commandes
  has_many :commandes

  attr_accessible :email, :password, :password_confirmation, :name

  # vérifier que le nom est présent
  validates :name, :presence => true
  
  validates_confirmation_of :password
  validates_presence_of :email
  validates_format_of :email, with: /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/, on: :create
  validates_presence_of :password, on: :create
  validates_uniqueness_of :email
end