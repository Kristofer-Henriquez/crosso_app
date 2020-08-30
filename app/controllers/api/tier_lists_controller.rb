class Api::TierListsController < ApplicationController

  def show
    @tier_list = TierList.find_by(id: params[:id])
    render "show.json.jb"
  end
end
