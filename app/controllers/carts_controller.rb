class CartsController < ApplicationController
  def create
    cart = if !current_user.cart
             Cart.create(user_id: current_user.id)
           else
             current_user.cart
           end
    listing = Listing.find.build(params[:listing_id])
    cart.listing_carts.create(listing: listing)
    redirect_to listings_path
  end
end 
