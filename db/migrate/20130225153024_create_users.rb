class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.integer :class_of
      t.boolean :is_admin

      t.timestamps
    end
  end
end
