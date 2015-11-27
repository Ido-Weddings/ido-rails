class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.date :wedding_date
      t.string :password_digest
      t.string :fb_picture_url
      t.belongs_to :user, index: true
      t.timestamps null: false
    end
  end
end
