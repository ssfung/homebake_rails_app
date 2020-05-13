class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end 

  def show
    @listing = Listing.find(params[:id])
  end 

  def new
    @listing = Listing.new 

  end 

  def create 
    @listing = current_user.listings.new(listing_params)
    @listing.save
    if @listing.save
      redirect_to listings_path
    else
      render 'new'
    end
  end 

  def update
  end 

  def delete
  end 


  private

  def listing_params  
    params.require(:listing).permit(:title, :description, :gluten_free, :price)
  end 
end