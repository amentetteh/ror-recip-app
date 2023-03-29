class RecipeFoodsController < ApplicationController
  def index
    @user = User.includes(:recipes, :foods)
    @food_counts = @user.map { |user| [user.name, user.foods.count] }
    @food_prices = @user.map { |user| [user.name, user.foods.sum(:price)] }
    @recipes = Recipe.includes(:recipe_foods, :foods).order('created_at DESC')
  end

  def show
    @recipe = Recipe.find(params[:recipe_id])
  end
end
