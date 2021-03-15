class LeaguesController < ApplicationController
  def index
    @leagues = League.select("leagues.*")
                     .group("leagues.id")
                     .order("rank")
  end

  def show
    @league = League.find(params[:id])
  end
end
