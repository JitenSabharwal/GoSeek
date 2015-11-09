class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email ,null:false
      t.string :name
      t.string :dob
      t.string :gender
      t.string :encrypted_password
      t.string :salt

      t.timestamps null: false
    end
    add_index :users ,:email , unique:true
  end
end
