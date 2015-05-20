class ShowListingsController < ApplicationController

  def new
    @showlisting = ShowListing.new
  end

  def create
    @showlisting = ShowListing.new(show_listing_params)
    @showlisting.save
    flash[:message] = "Show Listing Successfully Added"
    redirect_to show_path(@showlisting.show_id)
  end

  private

  def show_listing_params
    params.require(:show_listing).permit(:show_id, :channel_id, :date)
  end

end
