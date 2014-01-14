class TestCase < ActiveRecord::Base
  belongs_to :category
  belongs_to :test_plan
end
