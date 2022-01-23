class Api::V1::BaseController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  private

  def not_found(exception)
    # to show id the isn't entry
    render json: { error: exception.message }, status: :not_found
  end
end
