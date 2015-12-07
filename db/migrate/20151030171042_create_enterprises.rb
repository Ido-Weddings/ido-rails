class CreateEnterprises < ActiveRecord::Migration
  def change
    create_table :enterprises do |t|
      t.string :name
      t.string :description
      t.integer :capacity
      t.string :telephone
      t.string :cellphone
      t.string :email
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :password_digest
      #t.belongs_to :picture, index: true
      t.belongs_to :rating, index: true
      t.timestamps null: false
      t.decimal :rate, default: 0.0
      t.decimal :base_price
    end
  end
end
