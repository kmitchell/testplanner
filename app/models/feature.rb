class Feature < ActiveRecord::Base
  attr_accessible :name, :test_plan_attributes
  has_many :test_plans
end
