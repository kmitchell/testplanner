class Category < ActiveRecord::Base
  belongs_to :test_plan
  has_many :test_cases
  accepts_nested_attributes_for :test_cases
end
