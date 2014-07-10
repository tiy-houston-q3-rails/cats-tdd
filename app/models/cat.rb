class Cat < ActiveRecord::Base

  validates :name, presence: true
  validates :gender, presence: true, inclusion: { in: %w(male female)}
  validates :photo, presence: true
  validates :color, presence: true

  mount_uploader :photo, PhotoUploader

  has_many :purchases


end
