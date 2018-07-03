class HomeController < ApplicationController
  def index
    @latest_dive = LogEntry.last
  end
end
