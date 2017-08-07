class CreateStages < ActiveRecord::Migration[5.0]
  def change
    create_table :stages do |t|
      t.string :name, null: false
      t.string :description
      t.string :capacity, null: false
      t.string :price, null: false
      t.string :address, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
