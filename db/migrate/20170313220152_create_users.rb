class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :token
      t.string :password_digest
      t.string :avatar
      t.string :banner

      t.timestamps
    end
  end
end
