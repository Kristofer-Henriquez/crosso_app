class Api::TipsController < ApplicationController

  def show
    @tips = Tip.find_by(id: params[:id])
    render "show.json.jb"
  end

end
