class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end  

  def create
    @category = Category.new(category_params)
    @category.save
    redirect_to(:categories)
  end

private
  def category_params
    params.require(:category).permit(:test_plan_id, :title, :created_at, :updated_at)
  end

end