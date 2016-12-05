class User < ApplicationRecord

    has_one :list
    has_many :recipes
    belongs_to :recipes

end
