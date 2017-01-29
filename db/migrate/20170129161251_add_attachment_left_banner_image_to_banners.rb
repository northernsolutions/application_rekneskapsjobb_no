class AddAttachmentLeftBannerImageToBanners < ActiveRecord::Migration
  def self.up
    change_table :banners do |t|
      t.attachment :left_banner_image
    end
  end

  def self.down
    remove_attachment :banners, :left_banner_image
  end
end
