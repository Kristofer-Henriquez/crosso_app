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

  def update
    @combo = Combo.find_by(id: params[:id])
    @combo.combo_video = params[:combo_video] || @combo.combo_video
    @combo.character_id = params[:character_id] || @combo.character_id
    @combo.notation = params[:notation] || @combo.notation
    @combo.user_id = params[:user_id] || @combo.user_id

    @combo.save!
    render "show.json.jb"
  end

  def destroy
    @combo = Combo.find_by(id: params[:id])
    @combo.destroy
    render json: {message: "you have successfully deleted the video!"}
  end
end
