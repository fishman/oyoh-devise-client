class ApiController < ApplicationController
  respond_to :json

  def explore
    @json = doorkeeper_access_token.get("api/v1/#{params[:api]}").parsed
    respond_with @json
  end

  def explore_claims
    @json = doorkeeper_access_token.get("api/v1/claims/#{params[:api]}").parsed
    respond_with @json
  end

  def explore_prescriptions
    @json = doorkeeper_access_token.get("api/v1/prescriptions/#{params[:api]}").parsed
    respond_with @json
  end
end
