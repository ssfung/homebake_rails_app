class CartsController < ApplicationController
  def create
  cart = Cart.new(completed: false)
  if cart.save
  listing = Listing.find(params[:listing_id])
  cart.listings << listing 
  redirect_to listings_path
  end
end 
end 
