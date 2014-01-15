class TestPlansController < ApplicationController

  def index
    @test_plans = TestPlan.all
  end

  def new
    @test_plan = TestPlan.new
  end  

  def show
    @test_plan = TestPlan.find(params[:id])
  end

  def edit
    @test_plan = TestPlan.find(params[:id])
  end

  def create
    @test_plan = TestPlan.new(test_plan_params)
    @test_plan.save
    redirect_to @test_plan
  end

  def update
    @test_plan = TestPlan.find(params[:id])
    if @test_plan.update_attributes(params[:test_plan_params])
      redirect_to @test_plan
    else
      render :edit
    end
  end

private
  def test_plan_params
    params.require(:test_plan).permit(:name, :author, :created_at, :updated_at, 
                                      categories_attributes: [:test_plan_id, :title])
  end

end
