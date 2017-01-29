class AddAttachmentEmployerHeaderImageToEmployers < ActiveRecord::Migration
  def self.up
    change_table :employers do |t|
      t.attachment :employer_header_image
    end
  end

  def self.down
    remove_attachment :employers, :employer_header_image
  end
end
