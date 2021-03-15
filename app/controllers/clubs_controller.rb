class ClubsController < ApplicationController
  def index
    @clubs = Club.select("clubs.*")
                 .order("clubs.club_name")
                 .page(params[:page])
  end

  def show
    @club = Club.find(params[:id])
  end
end
