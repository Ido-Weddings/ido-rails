class CreateEnterpriseCategoryPictures < ActiveRecord::Migration
  def change
    create_table :enterprise_category_pictures do |t|
    	t.belongs_to :enterprise, index: true
    	t.belongs_to :category, index: true

      t.timestamps null: false
    end
  end
end
