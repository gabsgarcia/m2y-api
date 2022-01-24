class NetflixTitle < ApplicationRecord
  include PgSearch
  # validation to not have duplication
  validates :title, :show_id, uniqueness: true

  include PgSearch::Model
  pg_search_scope :search_by_year,
    against: [ :year ],
    using: {
      tsearch: { prefix: true }
    }
end
