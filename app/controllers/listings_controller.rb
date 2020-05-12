class ListingsController < ApplicationController

def index
@listings = Listing.all
end 

def show
  @listing = listing.find(params[:id])
end 
end
