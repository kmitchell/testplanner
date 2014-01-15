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
    @test_plan = TestPlan.new(params[:test_plan])
    @test_plan.save
    redirect_to @test_plan
  end

  def update
    @test_plan = TestPlan.find(params[:id])
    if @test_plan.update_attributes(params[:test_plan])
      redirect_to @test_plan
    else
      render :edit
    end
  end

  def destroy
    @test_plan = TestPlan.find(params[:id])
    @test_plan.destroy
    redirect_to test_plan_url, notice: "Successfully destroyed testplan."
  end

# private
#   def test_plan_params
#     params.require(:test_plan).permit(:name, :author, :created_at, :updated_at, 
#                                       categories_attributes: [:test_plan_id, :title])
#   end

end
