class NetflixTitle < ApplicationRecord
  # validation to not have duplications
  validates :title, :genre, :year, :country, :published_at, :description, presence: true
  validates :title, uniqueness: true
end
