class CreateEmployers < ActiveRecord::Migration[5.0]
  def change
    create_table :employers do |t|
      t.boolean :profile
      t.string :name
      t.text :summary
      t.text :about
      t.text :vision
      t.string :website_link
      t.string :facebook_link
      t.string :twitter_link
      t.string :youtube_link
      t.string :instagram_link

      t.timestamps
    end
  end
end
