class Api::TipsController < ApplicationController

  before_action :authenticate_user

  def index
    @tips = Tip.where(user_id: current_user.id)
    render "index.json.jb"
  end

  def show
    @tips = Tip.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @tips = Tip.new(
      tips_list: params[:tips_list],
      character_id: params[:character_id],
      user_id: params[:user_id]
    )
  
    if @tips.save
      render "show.json.jb"
    else 
      render json: {errors: @tier_list.error.full_messages}
    end
  end

  def update
    @tips = Tip.find_by(id: params[:id])
    @tips.tips_list = params[:tips_list] || @tips.tips_list
    @tips.character_id = params[:character_id] || @tips.character_id
    @tips.user_id = params[:user_id] || @tips.user_id

    @tips.save!
    render "show.json.jb"
  end

end
