class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :access_token
      t.string :uid
      t.string :photo_url
      t.string :provider

      t.timestamps
    end
  end
end
