class HomeController < ApplicationController
  def index
    @clubs = Club.includes(:league)
                 .order("club_name DESC")
                 .limit(20)
    @leagues = League.limit(10)
  end
end
