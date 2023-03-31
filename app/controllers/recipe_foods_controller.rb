class RecipeFoodsController < ApplicationController
  def index
    @user = current_user
    @food = @user.foods.left_outer_joins(:recipe_foods).where(recipe_foods: { id: nil }).includes(:recipe_foods)
    @food_counts = @food.count
    @food_prices = @food.sum(:price)
  end
end
