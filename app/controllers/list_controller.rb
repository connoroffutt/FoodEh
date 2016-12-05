class ListsController < ApplicationController

  has_one :user
  belongs_to :user
  has_many :ingredients
  belongs_to :ingredients

end
