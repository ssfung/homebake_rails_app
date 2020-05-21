class WelcomeController < ApplicationController
  before_action :set_search
  def index
  end

  #set_search method will run first in order for the search bar to work 
  def set_search
    @q = Listing.search(params[:q])
    @listing = @q.result(distinct: true)
end
end
