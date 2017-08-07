class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :name, null: false
      t.string :description
      t.string :email, null: false

      t.timestamps
    end
  end
end
