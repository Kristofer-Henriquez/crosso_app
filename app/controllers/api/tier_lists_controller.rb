class Api::TierListsController < ApplicationController

  def show
    @tier_list = TierList.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @tier_list = TierList.new(
      list: params[:list],
      game_id: params[:game_id],
      user_id: params[:user_id]
    )
  
    if @tier_list.save
      render "show.json.jb"
    else 
      render json: {errors: @tier_list.error.full_messages}
    end
  end

  
end
