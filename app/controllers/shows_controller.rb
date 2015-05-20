class ShowsController < ApplicationController

  before_action :set_show, only: [:show, :update, :edit]

  def new
    @show = Show.new
  end

  def create
    @show = Show.new(show_params)
    @show.save
    flash[:message] ="#{@show.name} Successfully Added"
    redirect_to show_path(@show)
  end

  def show
  end

  def edit
  end

  def update
    @show.update(show_params)
    flash[:message] = "#{@show.name} Successfully Updated"
    redirect_to show_path(@show)
  end


  private

  def show_params
    params.require(:show).permit(:name)
  end

  def set_show
    @show = Show.find(params[:id])
  end

end
