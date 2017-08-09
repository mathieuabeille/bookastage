class AddCoordinatesToStages < ActiveRecord::Migration[5.0]
  def change
    add_column :stages, :latitude, :float
    add_column :stages, :longitude, :float
  end
end
