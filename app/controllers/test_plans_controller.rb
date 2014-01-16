class TestPlansController < ApplicationController
  before_action :set_feature

  def index
    @test_plans = TestPlan.all
  end

  def new
    @test_plan = TestPlan.new
  end  

  def show
    @test_plan = TestPlan.find(params[:id])
    @feature = Feature.find(params[:feature_id])
  end

  def edit
    @test_plan = TestPlan.find(params[:id])
  end

  def create
    @test_plan = TestPlan.new(params[:test_plan])
    @test_plan.feature_id = params[:feature_id]
    @test_plan.save
    redirect_to @feature
  end

  def update
    @test_plan = TestPlan.find(params[:id])
    @feature = Feature.find(params[:feature_id])
    if @test_plan.update_attributes(params[:test_plan])
      redirect_to @feature
    else
      render :edit
    end
  end

  def destroy
    @test_plan = TestPlan.find(params[:id])
    @test_plan.destroy
    redirect_to test_plan_url, notice: "Successfully destroyed testplan."
  end

private
  def set_feature
    @feature = Feature.find params[:feature_id]
  end 

end
