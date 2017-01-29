class Banner < ApplicationRecord
  has_attached_file :left_banner_image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :left_banner_image, content_type: /\Aimage\/.*\z/

  has_attached_file :right_banner_image, styles: { medium: "1300x300>", thumb: "100x100>" }
  validates_attachment_content_type :right_banner_image, content_type: /\Aimage\/.*\z/
end
