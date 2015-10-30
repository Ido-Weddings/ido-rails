class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :url
      t.belongs_to :user, index: true
      t.belongs_to :enterprise, index: true
      t.timestamps null: false
    end
  end
end
