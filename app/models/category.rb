class Category < ActiveRecord::Base
  attr_accessible :title, :test_plan_id, :test_cases_attributes
  belongs_to :test_plan
  has_many :test_cases
  accepts_nested_attributes_for :test_cases
end
