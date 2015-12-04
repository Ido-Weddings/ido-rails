class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.belongs_to :enterprise, index: true
      t.belongs_to :user, index: true
      t.timestamps null: false
      t.string :message
    end
  end
end
