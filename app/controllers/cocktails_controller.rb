class CocktailsController < ApplicationController
    def index
        @cocktails = Cocktail.all 
    end

    def show
        @cocktail = Cocktail.find(params[:id])
        @dose = Dose.where(cocktail_id: @cocktail.id)
    end
    
    
end
