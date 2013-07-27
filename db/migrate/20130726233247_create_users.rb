class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.integer :age
      t.integer :zipcode
      t.boolean :is_female
      t.boolean :is_single
      t.boolean :paid_user
      t.string :profile_text

      t.timestamps
    end
  end
end
