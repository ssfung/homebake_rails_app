class CartsController < ApplicationController
  def index 
    if user_signed_in? && current_user.cart
    @cart = current_user.cart.carts_listings
    else
      redirect_to listings_path
    end 
  end 
  
  def create
    cart = if !current_user.cart
             Cart.create(user_id: current_user.id)
           else
             current_user.cart
           end
    listing = Listing.find(params[:listing_id])
    cart.carts_listings.create(listing: listing)
    redirect_to listings_path
  end
end   
