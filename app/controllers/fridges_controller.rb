class FridgesController < ApplicationController
    def index
        @fridges = Fridge.all
    end

    def new
        @fridge = Fridge.new
    end

    def create
        @fridge = Fridge.new(fridge_params)
        if @fridge.save
            redirect_to fridges_url
        else
            reidrect_to fridges_new_url
        end

    end
    
    # def show
    #     @fridge = Fridge.find_by(name: 
    # end
    
    private
    def fridge_params
        params.require(:fridge).permit(:location, :brand, :size)
    end


end

