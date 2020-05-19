class WelcomeController < ApplicationController
  before_action :set_search
  def index
  end

  def set_search
  @q =Listing.search(params[:q])
  @listing = @q.result(distinct: true)
end

end
