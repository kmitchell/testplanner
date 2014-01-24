class Feature < ActiveRecord::Base
  attr_accessible :name, :team_member, :spec_link, :group_link, :test_plan_attributes
  has_many :test_plans
end
