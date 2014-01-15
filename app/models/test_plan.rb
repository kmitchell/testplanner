class TestPlan < ActiveRecord::Base
  attr_accessible :name, :author, :categories_attributes
  has_many :categories
  accepts_nested_attributes_for :categories
end
