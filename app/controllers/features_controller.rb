class FeaturesController < ApplicationController

  def index
    @features = Feature.all
  end

  def new
    @feature = Feature.new
    @test_plan = TestPlan.new
  end  

  def show
    @feature = Feature.find(params[:id])
    # if @feature.test_plan_id == nil
    #   link to "Create a new test plan", new_feature_test_plan_path
    # else
    @test_plan = TestPlan.new(params[:test_plan])
    # @test_plan = TestPlan.find(params[:test_plan_id])
    @show_test_plan = @feature.test_plan_id
    # end
  end

  def edit
    @feature = Feature.find(params[:id])
  end

  def create
    @feature = Feature.new(params[:feature])
    @feature.save
    redirect_to @feature
  end

  def update
    @feature = Feature.find(params[:id])
    if @feature.update_attributes(params[:feature])
      redirect_to @feature
    else
      render :edit
    end
  end

  def destroy
    @feature = Feature.find(params[:id])
    @feature.destroy
    redirect_to feature_url, notice: "Successfully destroyed testplan."
  end
end
