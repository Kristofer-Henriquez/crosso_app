class Api::UniversalsController < ApplicationController

  def index
    @universals = Universal.all
    render "index.json.jb"
  end

end
