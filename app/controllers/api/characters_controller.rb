class Api::CharactersController < ApplicationController

  def index
    @characters = Character.all
    render "index.json.jb"
  end

  def show
    @character = Character.find_by(id: params[:id])
    render "show.json.jb"
  end

end
