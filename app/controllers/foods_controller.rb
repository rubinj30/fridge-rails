class FoodsController < ApplicationController
    
    def index
        @fridge = Fridge.find(params[:fridge_id])
        @foods = @fridge.foods
    end

    def show
        @food = Food.find(params[:id])
    end

    def new
        @food = Food.new
    end

    def create
        @food = Food.new(food_params)
        if @food.save
            redirect_to "/fridges"
        else
            reidrect_to "/fridges/#{@food.fridge_id}/foods"
        end
    end

    def destroy
        @food = Food.find(params[:id])
        @food.destroy
        redirect_to fridges_url
    end

    private
    def food_params
        params.require(:food).permit(:name, :weight, :vegan)
    end
    
end
