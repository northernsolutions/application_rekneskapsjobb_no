class AddAttachmentEmployerLogoImageToEmployers < ActiveRecord::Migration
  def self.up
    change_table :employers do |t|
      t.attachment :employer_logo_image
    end
  end

  def self.down
    remove_attachment :employers, :employer_logo_image
  end
end
