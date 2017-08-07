class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.datetime :date, null: false
      t.references :stage, foreign_key: true, null: false
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
