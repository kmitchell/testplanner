class AddFeatureIdToTestPlans < ActiveRecord::Migration
  def change
    add_column :test_plans, :feature_id, :integer
  end
end
