class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :password
      t.string :languages
      t.integer :rating
      t.string :photo

      t.timestamps
    end
  end
end
