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
            reidrect_to new_fridge_url
        end

    end
    
    def show
        @fridge = Fridge.find(params[:id]) 
    end

    def destroy
        @fridge = Fridge.find(params[:id])
        @fridge.destroy
        redirect_to fridges_url
    end

    def edit
        @fridge = Fridge.find(parmas[:id])
    end

    private
    def fridge_params
        params.require(:fridge).permit(:location, :brand, :size)
    end


end

