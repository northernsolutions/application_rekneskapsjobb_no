class Employer < ApplicationRecord
  has_many :jobs

  scope :published, ->{ where.not(published_at: nil)}
  scope :unpublished, ->{ where(published_at: nil)}

  has_attached_file :employer_header_image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :employer_header_image, content_type: /\Aimage\/.*\z/

  has_attached_file :employer_logo_image, styles: { medium: "1300x300>", thumb: "100x100>" }
  validates_attachment_content_type :employer_logo_image, content_type: /\Aimage\/.*\z/


  validates :profile, presence: false
  validates :name, presence: false
  validates :about, presence: false
  validates :vision, presence: false
  validates :website, presence: false
  validates :facebook_link, presence: false
  validates :twitter_link, presence: false
  validates :youtube_link, presence: false
  validates :instagram_link, presence: false
  validates :google_plus_link, presence: false
  validates :linkedin_link, presence: false
  validates :published_at, presence: false
  validates :employer_header_image, presence: false
  validates :employer_logo_image, presence: false
end
