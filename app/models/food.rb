class Food < ApplicationRecord
  has_many :recipe_foods
  has_many :recipes, through: :recipe_foods
  belongs_to :user
  validates :name, presence: true

  # def food_params
  #   params.require(:food).permit(:name, :measurement_unit, :price, :quantity)
  # end  
end
