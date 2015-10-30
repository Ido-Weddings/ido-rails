class CreateEnterprisesAndUsers < ActiveRecord::Migration
  def change
    create_table :enterprises_users, id:false do |t|
      t.belongs_to :enterprise, index: true
      t.belongs_to :user, index: true
    end
  end
end
