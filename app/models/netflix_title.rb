class NetflixTitle < ApplicationRecord
  include PgSearch
  # validation to not have duplication
  validates :title, :show_id, uniqueness: true

  include PgSearch::Model
  pg_search_scope :search_by_year_country_genre,
                  against: %i[year country genre],
                  using: {
                    tsearch: { prefix: true }
                  }
end
