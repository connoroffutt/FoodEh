class User < ApplicationRecord
  authenticates_with_sorcery!

  has_one :list
  has_many :recipes
  belongs_to :recipes

  validates :password, length: { minimum: 3 }, on: :create
  validates :password, confirmation: true, on: :create
  validates :password_confirmation, presence: true, on: :create

  validates :email, uniqueness: true

end
