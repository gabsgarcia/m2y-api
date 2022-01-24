class NetflixTitle < ApplicationRecord
  include PgSearch
  # validation to not have duplication
  validates :title, uniqueness: true

  include PgSearch::Model
  pg_search_scope :search_by_year,
    against: [ :year, :synopsis ],
    using: {
      tsearch: { prefix: true }
    }
end
