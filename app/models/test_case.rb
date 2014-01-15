class TestCase < ActiveRecord::Base
  attr_accessible :description, :category_id
  belongs_to :category
end
