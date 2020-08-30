class Api::TutorialsController < ApplicationController

  def show
    @tutorial = Tutorial.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @tutorial = Tutorial.new(
      title: params[:title],
      body: params[:body],
      character_id: params[:character_id],
      user_id: params[:user_id]
    )
  
    if @tutorial.save
      render "show.json.jb"
    else 
      render json: {errors: @tutorial.error.full_messages}
    end
  end

end
