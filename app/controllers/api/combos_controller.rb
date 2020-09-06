class Api::CombosController < ApplicationController

  before_action :authenticate_user

  def index
    @combos = Combo.where(user_id: current_user.id)
    render "index.json.jb"
  end

  def show
    @combo = Combo.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @combo = Combo.new(
      user_id: current_user.id,
      combo_video: params[:combo_video],
      notation: params[:notation],
    )

    if @combo.save
      render "show.json.jb"
    else 
      render json: {errors: @combo.errors.full_messages}
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

  skip_before_action :authenticate_user, only: [:indexall]

  def indexall
    @combos = Combo.all.reverse
    render "index.json.jb"
  end

end
