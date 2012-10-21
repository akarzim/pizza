# encoding: utf-8
# == Schema Information
#
# Table name: users
#
#  id                              :integer          not null, primary key
#  email                           :string(255)      not null
#  crypted_password                :string(255)
#  salt                            :string(255)
#  created_at                      :datetime         not null
#  updated_at                      :datetime         not null
#  remember_me_token               :string(255)
#  remember_me_token_expires_at    :datetime
#  reset_password_token            :string(255)
#  reset_password_token_expires_at :datetime
#  reset_password_email_sent_at    :datetime
#  name                            :string(255)
#

class User < ActiveRecord::Base
  authenticates_with_sorcery!

  # un utilisateur a plusieurs commandes
  has_many :commandes

  attr_accessible :email, :password, :password_confirmation, :name

  validates_presence_of :name
  validates_confirmation_of :password
  validates_presence_of :email
  validates_format_of :email, with: /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/, on: :create
  validates_presence_of :password, on: :create
  validates_uniqueness_of :email

  def to_s
    name
  end
end
