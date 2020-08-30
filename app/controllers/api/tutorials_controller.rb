class Api::TutorialsController < ApplicationController

  def show
    @tutorial = Tutorial.find_by(id: params[:id])
    render "show.json.jb"
  end

end
