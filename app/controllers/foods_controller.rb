class FoodsController < ApplicationController
    
    def index
        @foods = Fridge.find(params[:fridge_id]).foods

        @fridge = Fridge.find(params[:fridge_id])
    end

end
