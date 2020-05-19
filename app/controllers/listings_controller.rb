class ListingsController < ApplicationController
  before_action :find_listing, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy] 
  load_and_authorize_resource

  def index
  @q = Listing.ransack(params[:q])
  @listings = @q.result(distinct: true).includes(:categories)
  end

  def show
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = current_user.listings.new(listing_params)
    @listing.listings_categories.build(category_id:params[:listing][:category_id])
   
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
    @listing.listings_categories.update(category_id:params[:listing][:category_id])
    redirect_to listings_path
  end

  def destroy
    @listing.destroy

    redirect_to listings_path
  end


  private

  def listing_params
    params.require(:listing).permit(:title, :description, :gluten_free, :price, :vegan, :dairy_free, :delivery, :picture, :name, categories_attributes: [:name])
  end

  def find_listing
    @listing = Listing.find(params[:id])
  end
end
