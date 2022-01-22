class Api::V1::NetflixTitlesController < Api::V1::BaseController
  def index
    @netflix_titles = NetflixTitle.all
  end

  def show
    @netflix_title = NetflixTitle.find(params[:id])
  end
end
