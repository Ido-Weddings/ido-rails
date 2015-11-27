class CreateAdvises < ActiveRecord::Migration
  def change
    create_table :advises do |t|
      t.belongs_to :user, index: true
      t.belongs_to :enterprise, index: true
      t.timestamps null: false
    end
  end
end
