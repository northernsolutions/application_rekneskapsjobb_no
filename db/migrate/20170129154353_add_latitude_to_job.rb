class AddLatitudeToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :latitude, :float
  end
end
