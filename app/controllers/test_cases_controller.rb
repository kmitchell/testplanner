class TestCasesController < ApplicationController

  def index
    @test_cases = TestCase.all
  end

  def new
    @test_case = TestCase.new
  end  

  def create
    @test_case = TestCase.new(test_case_params)
    @test_case.test_plan_id = params[:test_plan_id]
    @test_case.save
    redirect_to test_plan_path(@test_case.test_plan)
  end

private
  def test_case_params
    params.require(:test_case).permit(:description, :created_at, :updated_at)
  end

end
