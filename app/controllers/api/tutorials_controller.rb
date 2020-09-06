class Api::TutorialsController < ApplicationController


  before_action :authenticate_user

  def index
    @tutorials = Tutorial.where(user_id: current_user.id)
    render "index.json.jb"
  end

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

  def update
    @tutorial = Tutorial.find_by(id: params[:id])
    @tutorial.title = params[:title] || @tutorial.title
    @tutorial.body = params[:body] || @tutorial.body
    @tutorial.character_id = params[:character_id] || @tutorial.character_id
    @tutorial.user_id = params[:user_id] || @tutorial.user_id

    @tutorial.save!
    render "show.json.jb"
  end

end
