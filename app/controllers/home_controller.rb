class HomeController < ApplicationController
  def index
    @leagues = League.order("rank")
                     .limit(5)

    @matches = Match.order("date DESC")
                    .limit(10)
  end
end
