class Api::CombosController < ApplicationController

  def show
    @combo = Combo.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @combo = Combo.new(
      combo_video: params[:combo_video],
      character_id: params[:character_id],
      notation: params[:notation],
      user_id: params[:user_id]
    )

    if @combo.save
      render "show.json.jb"
    else 
      render json: {errors: @combo.error.full_messages}
    end
  end

end
