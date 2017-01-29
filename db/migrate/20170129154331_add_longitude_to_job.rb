class AddLongitudeToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :longitude, :float
  end
end
