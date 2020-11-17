class ChannelsController < ApplicationController

  def show
    @channel = Channel.find(params[:id])
    render json: @channel, serializer: ChannelShowSerializer
  end

  def index
    @channels = Channel.all
    render json: @channels
  end
end
