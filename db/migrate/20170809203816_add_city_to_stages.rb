class AddCityToStages < ActiveRecord::Migration[5.0]
  def change
    add_column :stages, :city, :string
  end
end
