class CreateCategoriesAndPreferences < ActiveRecord::Migration
  def change
    create_table :categories_preferences, id:false do |t|
      t.belongs_to :category, index: true
      t.belongs_to :preference, index: true
    end
  end
end
