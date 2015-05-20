class ChannelsController < ApplicationController

  def new
    @channel = Channel.new
  end

  def create
    @channel = Channel.new(channel_params)
    @channel.save
    flash[:message] = "#{@channel.name} Successfully Added"
    redirect_to root_path
  end

  private

  def channel_params
    params.require(:channel).permit(:name)
  end


end
