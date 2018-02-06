class Fridge < ApplicationRecord
    has_many :foods, dependent: :destroy
    has_many :drinks, dependent: :destroy
    validates :location, presence: true 
    validates :brand, presence: true 
    validates :size, presence: true 

    validates :foods, length: {maximum: 10}

    after_create {|fridge|
        if fridge.foods.length < 1
            fridge.has_food = false
        else
            fridge.has_food = true
        end
    }
end