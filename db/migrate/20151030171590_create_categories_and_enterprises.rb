class CreateCategoriesAndEnterprises < ActiveRecord::Migration
  def change
    create_table :categories_enterprises, id:false do |t|
      t.belongs_to :enterprise, index: true
      t.belongs_to :category, index: true
    end
  end
end
