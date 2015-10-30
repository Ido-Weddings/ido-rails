class CreateEnterprises < ActiveRecord::Migration
  def change
    create_table :enterprises do |t|
      t.string :name
      t.belongs_to :picture, index: true
      t.belongs_to :rating, index: true
      t.timestamps null: false
    end
  end
end
