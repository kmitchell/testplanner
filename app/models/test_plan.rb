class TestPlan < ActiveRecord::Base
  has_many :categories
  has_many :test_cases
end
