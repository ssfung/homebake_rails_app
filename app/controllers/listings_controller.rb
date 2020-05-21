class ListingsController < ApplicationController
  before_action :find_listing, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  load_and_authorize_resource
  include ActionView::Helpers::SanitizeHelper

  def index
    # the @q instance variable inherits from the application controller method set_search. This will allow all the listings to be searched. When it is being searched, eager loading is being activated as it will search for listings with images and categories.
    @q = Listing.ransack(params[:q])
    @listings = @q.result(distinct: true).includes(:categories).with_attached_picture
  end

  def show
  end

#creates a new listing 
  def new
    @listing = Listing.new
  end

  def create
    # this method will allow listings to be created as well as the listing's categories which is connected via a join table in a many-to-many relationship.
    @listing = current_user.listings.new(listing_params)
    @listing.listings_categories.build(category_id: params[:listing][:category_id])

    if @listing.save
      redirect_to listings_path
    else
      render 'new'
    end
  end

  def edit
  end
#updates a listing including the category
  def update
    @listing.update(listing_params)
    @listing.listings_categories.update(category_id: params[:listing][:category_id])
    redirect_to listings_path
  end

  def destroy
    @listing.destroy

    redirect_to listings_path
  end

  private

  def listing_params
    # strong params used only to allow the below parameters to avoid malicious code
    params.require(:listing).permit(:title, :description, :gluten_free, :price, :vegan, :dairy_free, :delivery, :picture, :name, categories_attributes: [:name])
  end

  def find_listing
    # this method will be invoked for some other methods such as show, edit, update, destroy
    @listing = Listing.find(params[:id])
  end
end
