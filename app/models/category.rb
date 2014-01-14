class Category < ActiveRecord::Base
  belongs_to :test_plan
  has_many :test_cases
end
