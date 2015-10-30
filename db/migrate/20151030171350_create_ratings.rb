class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.decimal :rating
      t.belongs_to :enterprise, index: true
      t.timestamps null: false
    end
  end
end
