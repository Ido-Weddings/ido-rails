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
      t.string :password_digest
      #t.belongs_to :picture, index: true
      t.belongs_to :rating, index: true
      t.timestamps null: false
      t.decimal :rate, default: 0.0
      t.decimal :base_price
      t.float :latitude, default: -15.867390
      t.float :longitude, default: -48.030899
      t.integer :number_ratings, default: 0
    end
  end
end
