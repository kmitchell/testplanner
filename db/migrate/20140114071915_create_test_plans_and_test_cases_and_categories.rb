class CreateTestPlansAndTestCasesAndCategories < ActiveRecord::Migration
  def change
    create_table :test_plans do |t|
      t.string :name
      t.string :author
      t.timestamps
    end

    create_table :categories do |t|
      t.belongs_to :test_plan
      t.string :title
      t.timestamps
    end

    create_table :test_cases do |t|
      t.belongs_to :category
      t.belongs_to :test_plan
      t.text :description
      t.timestamps
    end
  end
end
