class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
    @search = params["search"]
    if @search.present?
      @name = @search["name"]
      @cocktails = Cocktail.where(name: @name)
    end
  end
end
