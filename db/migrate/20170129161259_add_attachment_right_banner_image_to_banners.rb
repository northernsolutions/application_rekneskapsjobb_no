class AddAttachmentRightBannerImageToBanners < ActiveRecord::Migration
  def self.up
    change_table :banners do |t|
      t.attachment :right_banner_image
    end
  end

  def self.down
    remove_attachment :banners, :right_banner_image
  end
end
