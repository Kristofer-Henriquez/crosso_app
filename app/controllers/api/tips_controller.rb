class Api::TipsController < ApplicationController

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

  

end
