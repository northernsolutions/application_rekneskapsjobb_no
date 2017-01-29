class Job < ApplicationRecord
  belongs_to :employer
  belongs_to :job_category
  belongs_to :job_type

  geocoded_by :location
  after_validation :geocode

  scope :published, ->{ where.not(published_at: nil)}
  scope :unpublished, ->{ where(published_at: nil)}


  validates :exclusive, presence: false
  validates :employer, presence: false
  validates :job_category, presence: false
  validates :job_type, presence: false
  validates :title, presence: false
  validates :content, presence: false
  validates :location, presence: false
  validates :apply_date, presence: false
  validates :apply_info, presence: false
  validates :published_at, presence: false
end
