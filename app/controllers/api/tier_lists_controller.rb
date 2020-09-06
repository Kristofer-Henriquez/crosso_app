class Api::TierListsController < ApplicationController

  before_action :authenticate_user

  def index
    @tier_lists = TierList.where(user_id: current_user.id)
    render "index.json.jb"
  end

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

  def update
    @tier_list = TierList.find_by(id: params[:id])
    @tier_list.list = params[:list] || @tier_list.list
    @tier_list.game_id = params[:game_id] || @tier_list.game_id
    @tier_list.user_id = params[:user_id] || @tier_list.user_id

    @tier_list.save!
    render "show.json.jb"
  end

  
end
