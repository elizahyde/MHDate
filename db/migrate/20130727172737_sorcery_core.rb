class SorceryCore < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username,         :null => false  # if you use another field as a username, for example email, you can safely remove this field.
      t.string :email,            :default => nil # if you use this field as a username, you might want to make it :null => false.
      t.string :crypted_password, :default => nil
      t.string :salt,             :default => nil
      t.integer :age
      t.integer :zipcode
      t.boolean :is_female
      t.boolean :is_single
      t.boolean :paid_user
      t.string :profile_text

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end