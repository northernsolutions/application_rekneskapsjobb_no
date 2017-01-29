class Employer < ApplicationRecord
  has_many :jobs

  scope :published, ->{ where.not(published_at: nil)}
  scope :unpublished, ->{ where(published_at: nil)}


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
end
