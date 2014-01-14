class TestPlansController < ApplicationController

  def index
    @test_plans = TestPlan.all
  end

  def new
    @test_plan = TestPlan.new
  end  

  def create
    @test_plan = TestPlan.new(test_plan_params)
    @test_plan.save
    redirect_to(:test_plans)
  end

  def show
    @test_plan = TestPlan.find(params[:id])
    @test_case = TestCase.new
    @test_case.test_plan_id = @test_plan.id
  end

private
  def test_plan_params
    params.require(:test_plan).permit(:name, :author, :created_at, :updated_at)
  end

end