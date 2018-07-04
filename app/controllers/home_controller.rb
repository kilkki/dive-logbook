class HomeController < ApplicationController
  def index
    @latest_dive = Dive.last
  end
end
