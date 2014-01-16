class TestPlan < ActiveRecord::Base
  attr_accessible :name, :author, :feature_id, :categories_attributes
  belongs_to :feature
  has_many :categories
  accepts_nested_attributes_for :categories
end
