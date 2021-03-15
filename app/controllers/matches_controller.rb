class MatchesController < ApplicationController
  def index
    @matches = Match.all
                    .order("date")
                    .page(params[:page])
  end

  def show
    @match = Match.find(params[:id])
  end
end
