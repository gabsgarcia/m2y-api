require 'csv'
class Api::V1::NetflixTitlesController < Api::V1::BaseController
  before_action :import, only: %i[index show]

  def import
    # to read the cvs file in a endpoint
    CSV.foreach('./lib/netflix_titles.csv', headers: true, col_sep: ',') do |row|
      NetflixTitle.create({
                            show_id: row[0],
                            title: row[2],
                            genre: row[1],
                            year: row[7],
                            country: row[5],
                            published_at: row[6],
                            description: row[11]
                          })
    end
  end

  def index
    # if params[:query].present?
    #   @netflix_titles = NetflixTitle.where(year: params[:query])
    # else
      # to show all the entries in order by the year
      @netflix_titles = NetflixTitle.all.order(:year)
    # end
  end

  def show
    # to show each entry
    @netflix_title = NetflixTitle.find(params[:id])
  end
end
