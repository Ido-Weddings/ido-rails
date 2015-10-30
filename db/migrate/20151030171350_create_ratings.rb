class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.decimal :rate
      t.belongs_to :enterprise, index: true
      t.belongs_to :user, index: true
      t.timestamps null: false
    end
  end
end
