class ListingsController < ApplicationController 
  before_action :find_listing, only:[:show, :edit, :update, :destroy]
  before_action :authenticate_user! only: [:new, :create, :edit, :update, :destroy]
  def index
    @listings = Listing.all
  end 

  def show
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

  def edit
  end 
  
  def update
    @listing.update(listing_params)

    redirect_to listings_path
  end 

  def destroy
  @listing.destroy

  redirect_to listings_path 
  end 


  private

  def listing_params  
    params.require(:listing).permit(:title, :description, :gluten_free, :price, :vegan, :dairy_free, :delivery, :picture)
  end 

  def find_listing
  @listing = Listing.find(params[:id])
  end 
end