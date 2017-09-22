class CampaignsController < ApplicationController
  before_action :authenticate_user!

  def index
    campaigns = Campaign.all
    render :json => campaigns.to_json()
  end

  def create
    campaign = Campaign.create( campaign_params )
    render json: campaign, status: :created
  end


  private
  def campaign_params
    params.require(:campaign).permit([:title, :series, :description, :image, :programmeID])
  end#TODO: update params to fit campaign

end
