class AddPublishedAtToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :published_at, :datetime
  end
end
