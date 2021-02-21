class DosesController < ApplicationController
    def new
       @dose = Dose.new
       @cocktail = Cocktail.find(params[:cocktail_id])
    end

    def create
        @dose = Dose.new(doses_params)
        @dose.cocktail = Cocktail.find(params[:cocktail_id])

        if @dose.save
            redirect_to cocktail_path(params[:cocktail_id])
        else
            render :new
        end
            
    end
   
    
    private

    def doses_params
        params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
        
    end
    
    
end
