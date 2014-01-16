class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :name
      t.integer :test_plan_id
      t.timestamps
    end
  end
end
