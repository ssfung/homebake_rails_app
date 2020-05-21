class CartsController < ApplicationController
  def index
  # if the user is signed in and the current cart's user is the most recent one, the listings will be listed with their listing id
    if user_signed_in? && current_user.carts.last
      @cart = current_user.carts.last.listings
      @listing_ids = @cart.map do |listing|
        listing.id
      end
    else
      redirect_to listings_path
    end
  end

  def create
  # if the cart is empty, a new cart is created. If it isn't empty, it will use the most recent (last cart). All the listings selected will be pushed into that cart. 
    if current_user.carts.empty?
      cart = Cart.create(completed: false, user_id: current_user.id)
    else
      cart = current_user.carts.last
    end
    listing = Listing.find(params[:listing_id])
    cart.listings << listing
    redirect_to listings_path
  end
end
