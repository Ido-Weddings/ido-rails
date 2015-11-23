class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.decimal :budget
      t.boolean :musician
      t.boolean :band
      t.boolean :dj
      t.belongs_to :user, index: true
      t.belongs_to :category, index: true
      t.timestamps null: false
    end
  end
end
