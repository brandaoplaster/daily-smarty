class Topic < ApplicationRecord
  extend FriendlyId

  has_many :posts

  friendly_id :title, use: :slugged
  validates_uniqueness_of :slug
  validates_presence_of :title, :slug
end
