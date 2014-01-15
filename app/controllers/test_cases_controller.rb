# class TestCasesController < ApplicationController

#   def index
#     @test_cases = TestCase.all
#   end

#   def new
#     @test_case = TestCase.new
#   end

#   def show
#     @test_case = TestCase.find(params[:id])
#   end

#   def edit
#     @test_case = TestCase.find(params[:id])
#   end

#   def create
#     @test_case = TestCase.new(test_case_params)
#     @test_case.category_id = params[:category_id]
#     @test_case.save
#   end

#   def update
#     @test_case = TestCase.find(params[:id])
#     @test_case.update_attributes(params[:test_case_params])
#   end

# # private
# #   def test_case_params
# #     params.require(:test_case).permit(:description, :category_id, :created_at, :updated_at)
# #   end

# end
