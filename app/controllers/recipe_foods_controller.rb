class RecipeFoodsController < ApplicationController
    def index
        @user = current_user
        @food_counts = @user.foods.count
        @food_prices = @user.foods.sum(:price)
        @food = @user.foods.includes(:recipe_foods)
    end
end
