class User < ApplicationRecord
  authenticates_with_sorcery!

  has_one :list
  has_many :recipes
  belongs_to :recipes


end
