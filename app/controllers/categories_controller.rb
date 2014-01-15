class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def show
    @category = Category.find(params[:id])
  end

  def edit
    @category = Category.find(params[:id])
  end

  def create
    @category = Category.new(category_params)
    @category.test_plan_id = params[:test_plan_id]
    @category.save
  end

  def update
    @category = Category.find(params[:id])
    @category.update_attributes(params[:category_params])
  end

private
  def category_params
    params.require(:category).permit(:test_plan_id, :title, :created_at, :updated_at, 
                                     test_cases_attributes: [:category_id,:description])
  end

end